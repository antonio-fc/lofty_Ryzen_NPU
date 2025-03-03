#!/usr/bin/python3
import json
import argparse
import sys
import re

from aie.utils.trace_events_enum import CoreEvent, MemEvent, PLEvent, MemTileEvent

# Number of different trace types, currently 4
# core:    pkt type 0
# mem:     pkt type 1
# intfc:   pkt type 2
# memtile: pkt type 3
NumTraceTypes = 4
NUM_EVENTS = 8  # number of events we can view per trace

# DEBUG = False
# DEBUG = True


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--filename", help="Trace file", required=True)
    parser.add_argument("--mlir", help="mlir source file", required=True)
    parser.add_argument(
        "--colshift", help="column shift adjustment to source mlir", required=False
    )
    parser.add_argument("--debug", help="debug mode", required=False)
    # TODO tracelabels removed since we can have multiple sets of labels for each pkt_type & loc combination
    # parser.add_argument('--tracelabels',
    #         nargs='+',
    #         help='Labels for traces', required=False)
    return parser.parse_args(sys.argv[1:])


def check_odd_word_parity(word):
    val = 0
    for i in range(32):
        val = val ^ ((word >> i) & 0x1)
    return val == 1


def parse_pkt_hdr_in_stream(word):
    hdr = dict()
    w = int(word)
    hdr["valid"] = check_odd_word_parity(w)
    # TODO can we assume non used fields must be 0 to rule out other data packets?
    # what about bit[5:10]?
    if (((w >> 5) & 0x7F) != 0) or (((w >> 19) & 0x1) != 0) or (((w >> 28) & 0x7) != 0):
        hdr["valid"] = False
    else:
        # TODO Do we need to check for valid row/col for given device?
        hdr["col"] = (w >> 21) & 0x7F
        hdr["row"] = (w >> 16) & 0x1F
        hdr["type"] = (w >> 12) & 0x3
        hdr["id"] = w & 0x1F
    return hdr


# toks_list:   list (idx = types of traces, currently 4, value = stream_dict)
# stream_dict: dict (key = row,col, value = list of word streams)
def core_trace_and_mem_trace_de_interleave(word_stream):
    toks_list = list()
    for t in range(NumTraceTypes):
        toks_list.append(dict())

    # core_streams = dict()   # pkt type 0
    # mem_stream = dict()     # pkt type 1
    # intfc_stream = dict()   # pkt type 2
    # memtile_stream = dict() # pkt type 3

    # index lists based on row/col and if its not null, that means it already exists

    curr_pkt_type = 0
    curr_loc = ""
    curr_vld = False  # only used in the beginning

    # print(len(word_stream))
    for i in range(len(word_stream)):
        if word_stream[i] == "":
            break  # TODO Assumes a blank line is the last line
        if (i % 8) == 0:
            # print(str(i)+':'+word_stream[i])
            pkt_hdr = parse_pkt_hdr_in_stream(int(word_stream[i], 16))
            if pkt_hdr["valid"]:
                curr_loc = str(pkt_hdr["row"]) + "," + str(pkt_hdr["col"])
                valid_type_found = False
                for tt in range(NumTraceTypes):
                    if pkt_hdr["type"] == tt:
                        curr_pkt_type = tt
                        if toks_list[tt].get(curr_loc) == None:
                            toks_list[tt][curr_loc] = list()
                        valid_type_found = True
                if not valid_type_found:
                    sys.exit("Error: Invalid packet type")
            # Crate a list for the loc if it doesn't exist
            curr_vld = True
        else:
            if (
                curr_vld
            ):  # ignores first 8 chunks of data is pkt hdr was invalid. TODO Is this right?
                # or shoudl we require valid header in first chunk of data
                toks_list[curr_pkt_type][curr_loc].append(
                    word_stream[i]
                )  # TODO assuem curr_pkt_type is valid
                # for tt in range(NumTraceTypes):
                #     if curr_pkt_type == tt:
                #         toks_list[tt][curr_loc].append(word_stream[i])
    return toks_list


# toks_list is a list of toks dictionaries where each dictionary is a type (core, mem, intfc, memtile)
# each dictionary key is a tile location (row,col) whose value is a list of stream data
def convert_to_byte_stream(toks_list):
    byte_stream_list = list()
    for l in toks_list:
        byte_stream_dict = dict()
        for loc, stream in l.items():
            # byte_stream = list()
            byte_stream_dict[loc] = list()
            f = ["", "a5a5a5a5"]
            toks = [t for t in stream if not t in f]
            events = [int(t, 16) for t in toks]
            for event in events:
                for top in range(4):
                    byte = 3 - top
                    opcode = event >> (byte * 8) & 0xFF
                    byte_stream_dict[loc].append(opcode)
        byte_stream_list.append(byte_stream_dict)
    return byte_stream_list


# byte_stream_list: list (idx = trace type, value = word_stream_dict)
# word_stream_dict: dict (key = row,col, value = list of words)
#
# return commands:  list (idx = trace type, value = byte_stream_dict)
# byte_stream_dict: dict (key = row,col, value = list of commands)
#
# command: dict
#   keys: type (Single0/1, Multiple0/1/2, Start, Repeat0/1, EventSync)
#         event (integer value)
#         cycles (integer value)
#         event# (integer value matching event number #)
#         repeats (integer value)
def convert_to_commands(byte_stream_list, zero=True):
    # commands = dict()
    commands = list()
    for t in range(NumTraceTypes):
        commands.append(dict())

    for t in range(NumTraceTypes):
        for key, byte_stream in byte_stream_list[t].items():
            cursor = 0
            commands[t][key] = list()
            try:
                while True:
                    if (byte_stream[cursor] & 0b11111011) == 0b11110000:
                        com = {"type": "Start", "timer_value": 0}
                        if not zero:
                            for i in range(7):
                                com["timer_value"] += (byte_stream[cursor + i + 1]) * (
                                    256 ** (6 - i)
                                )
                        commands[t][key].append(com)
                        cursor = cursor + 8
                    if (byte_stream[cursor] & 0b11111100) == 0b11011100:
                        # We don't care about these
                        cursor = cursor + 4
                    if (byte_stream[cursor] & 0b10000000) == 0b00000000:
                        com = {"type": "Single0"}
                        com["event"] = (byte_stream[cursor]) >> 4 & 0b111
                        com["cycles"] = (byte_stream[cursor]) & 0b1111
                        commands[t][key].append(com)
                        cursor = cursor + 1
                    if (byte_stream[cursor] & 0b11100000) == 0b10000000:
                        com = {"type": "Single1"}
                        com["event"] = (byte_stream[cursor]) >> 2 & 0b111
                        com["cycles"] = ((byte_stream[cursor]) & 0b11) * 256
                        com["cycles"] += byte_stream[cursor + 1]
                        commands[t][key].append(com)
                        cursor = cursor + 2
                    if (byte_stream[cursor] & 0b11100000) == 0b10100000:
                        com = {"type": "Single2"}
                        com["event"] = (byte_stream[cursor]) >> 2 & 0b111
                        com["cycles"] = ((byte_stream[cursor]) & 0b11) * 256 * 256
                        com["cycles"] += byte_stream[cursor + 1] * 256
                        com["cycles"] += byte_stream[cursor + 2]
                        commands[t][key].append(com)
                        cursor = cursor + 3
                    if (byte_stream[cursor] & 0b11110000) == 0b11000000:
                        com = {"type": "Multiple0"}
                        com["cycles"] = byte_stream[cursor + 1] & 0b1111
                        events = (byte_stream[cursor] & 0b1111) << 4
                        events = events + (byte_stream[cursor + 1] >> 4)
                        for i in range(0, 8):
                            e = (events >> i) & 0b1
                            if e:
                                com["event" + str(i)] = (
                                    i  # TODO is this how event# is stored in IR?
                                )
                        commands[t][key].append(com)
                        cursor = cursor + 2
                    if (byte_stream[cursor] & 0b11111100) == 0b11010000:
                        # TODO Don't we need to extract events here?
                        # print("Multiple1")
                        com = {"type": "Multiple1"}
                        cycles = (byte_stream[cursor + 1] & 0b11) << 8
                        com["cycles"] = cycles + (byte_stream[cursor + 2])
                        events = (byte_stream[cursor] & 0b11) << 6
                        events = events + (byte_stream[cursor + 1] >> 2)
                        for i in range(0, 8):
                            e = (events >> i) & 0b1
                            if e:
                                com["event" + str(i)] = (
                                    i  # TODO is this how event# is stored in IR?
                                )
                        commands[t][key].append(com)
                        cursor = cursor + 3
                    if (byte_stream[cursor] & 0b11111100) == 0b11010100:
                        # TODO Don't we need to extract events here?
                        # print("Multiple2")
                        com = {"type": "Multiple2"}
                        cycles = (byte_stream[cursor + 1] & 0b11) << 16
                        cycles = cycles + ((byte_stream[cursor + 2]) << 8)
                        com["cycles"] = cycles + (byte_stream[cursor + 3])
                        events = (byte_stream[cursor] & 0b11) << 6
                        events = events + (byte_stream[cursor + 1] >> 2)
                        for i in range(0, 8):
                            e = (events >> i) & 0b1
                            if e:
                                com["event" + str(i)] = (
                                    i  # TODO is this how event# is stored in IR?
                                )
                        commands[t][key].append(com)
                        cursor = cursor + 4
                    if (byte_stream[cursor] & 0b11110000) == 0b11100000:
                        com = {"type": "Repeat0"}
                        com["repeats"] = (byte_stream[cursor]) & 0b1111
                        commands[t][key].append(com)
                        cursor = cursor + 1
                    if (byte_stream[cursor] & 0b11111100) == 0b11011000:
                        com = {"type": "Repeat1"}
                        com["repeats"] = ((byte_stream[cursor]) & 0b11) * 256
                        com["repeats"] += byte_stream[cursor + 1]
                        commands[t][key].append(com)
                        cursor = cursor + 2
                    if (byte_stream[cursor] & 0b11111111) == 0b11111110:
                        # No one likes you filler, get out of here
                        cursor = cursor + 1
                    if (byte_stream[cursor] & 0b11111111) == 0b11111111:
                        com = {"type": "Event_Sync"}
                        commands[t][key].append(com)
                        cursor = cursor + 1
            except IndexError:
                pass

    return commands


def make_event_lists(commands):
    events = {}
    ts = 0
    for i, command in enumerate(commands):
        if command["type"] == "Start":
            ts = command["timer_value"]
        if command["type"] == "Event_Sync":
            ts += 0x3FFFF  # Typo in spec
        if "Single" in command["type"]:
            ts += command["cycles"]
            if command["event"] in events:
                events[command["event"]].append(ts)
            else:
                events[command["event"]] = [ts]
    return events


# testing a flattening of repeat commands
def flatten_repeat_command(commands):
    prev = 0
    flat_commands = list()
    for c in commands:
        if c["type"] == "Repeat0" or c["type"] == "Repeat1":
            for i in range(int(c["repeats"])):
                flat_commands.append(prev)
        else:
            flat_commands.append(c)
            prev = c
    return flat_commands


# Using trace_event_0 = 0x4B222125, trace_event_1 = 0x2D2C1A4F
def lookupEventNameInStr(event, pid, pid_events):
    return lookup_event_name_by_code(pid_events[0][int(event)])


# multiples is a list of events that are being activated
def deactivate(
    multiples, active_events, timer, cycles, pid, trace_type, loc, pid_events
):
    for k in active_events.keys():  # an active event
        if cycles > 0 or (cycles == 0 and not k in multiples):
            # if not k in multiples: # active event it not in multiples list
            if active_events[k] > 0:
                # trace_event = {'name':"Event"+str(k)}
                # trace_event = {'name':events_to_name[k]}
                # trace_event = {'name':lookupEventNameInStr(str(k), pid, pid_events)}
                # trace_event = {'name':lookup_event_name_by_type(trace_type, str(k), pid_events)} # TODO remove
                trace_event = {
                    "name": lookup_event_name_by_type(
                        trace_type, pid_events[trace_type][loc][k]
                    )
                }  # TODO remove
                # trace_event['args']['name'] = lookup_event_name_by_type(trace_type, pid_events[trace_type][loc][k])
                #                trace_event['ts'] = active_events[k]
                trace_event["ts"] = timer
                trace_event["ph"] = "E"
                # trace_event['pid'] = 0
                trace_event["pid"] = pid
                trace_event["tid"] = k
                trace_event["args"] = {}
                # trace_event['keys'] = multiples
                # trace_event['active_events'] = active_events.keys()
                # trace_event['opcode'] = "Deactivate" + str(multiples)

                trace_events.append(trace_event)
            active_events[k] = 0

# commands:  list (idx = trace type, value = byte_stream_dict)
# byte_stream_dict: dict (key = row,col, value = list of commands)
def convert_commands_to_json(trace_events, commands, pid_events):
    # for bsd in commands: # byte_stream_dict for each trace type. TODO how to get index of bsd?
    for tt in range(
        len(commands)
    ):  # byte_stream_dict for each trace type. TODO how to get index of bsd?
        byte_stream_dict = commands[tt]

        for loc, command in byte_stream_dict.items():  # row,col with list of commands
            timer = 0  # TODO Some way to set this or sync this between trace types and row,col
            # timer on each execution is the time for the last execution
            # so we by default will increment it by 1 for each event
            pid = pid_events[tt][loc][NUM_EVENTS]

            active_events = dict()
            for i in range(16):  # TODO we only have 8 events at a time though right?
                active_events[i] = 0

            for c in command:
                # for c in flat_commands:
                # print(c)
                t = c["type"]
                # if 'Start' in t:
                # timer = c['timer_value'] # TODO Turn off timer for now to test sync among tiles/type
                # elif 'Single' in t:
                if "Single" in t:
                    event = c["event"]
                    cycles = int(c["cycles"])

                    # timer = timer + 1 + int(c['cycles'])   # Timer at top
                    timer = timer + 1

                    # if cycles > 0, deactivate all events
                    # if cycles == 0, deactivate all events except this one

                    # TODO NO? deactivate all active_events that is not this event
                    multiple_list = list()
                    # for k in c.keys():
                    #     if "event" in k:
                    #         multiple_list.append(c[k]) # TODO overkill since there should only be one?
                    multiple_list.append(c["event"])
                    # for k in active_events.keys():
                    #     if cycles > 0 or (cycles == 0 and k != event):
                    #         multiple_list.append(k)
                    deactivate(
                        multiple_list,
                        active_events,
                        timer,
                        cycles,
                        pid,
                        tt,
                        loc,
                        pid_events,
                    )

                    timer = timer + cycles

                    # If its already started, don't start it again ...
                    try:
                        if active_events[event] == 0:
                            # trace_event = {'name':events_to_name[event]}
                            # trace_event = {'name':lookupEventNameInStr(str(event), pid, pid_events)}
                            # trace_event = {'name':lookupEventNameInStr(str(event), pid, pid_events)} # TODO
                            trace_event = {
                                "name": lookup_event_name_by_type(
                                    tt, pid_events[tt][loc][event]
                                )
                            }
                            trace_event["ts"] = timer
                            trace_event["ph"] = "B"
                            # trace_event['pid'] = 0
                            trace_event["pid"] = pid
                            trace_event["tid"] = event
                            trace_event["args"] = {}
                            # trace_event['opcode'] = "Single"
                            trace_events.append(trace_event)
                            #                active_events[event] = timer  + 1
                            active_events[event] = 1
                    except KeyError:
                        pass
                    # timer = timer + 1 + int(c['cycles'])
                elif "Multiple" in t:
                    cycles = int(c["cycles"])

                    # timer = timer + 1 + int(c['cycles'])
                    timer = timer + 1

                    # if cycles > 0, deactivate all events
                    # if cycles == 0, deactivate all events except this one

                    # TODO NO? deactivate all active_events that is not this event
                    multiple_list = list()
                    for k in c.keys():
                        if "event" in k:
                            multiple_list.append(c[k])
                    # for k in active_events.keys():
                    #     if cycles > 0 or (cycles == 0 and k != event):
                    #         multiple_list.append(k)
                    deactivate(
                        multiple_list,
                        active_events,
                        timer,
                        cycles,
                        pid,
                        tt,
                        loc,
                        pid_events,
                    )

                    timer = timer + cycles

                    for k in c.keys():
                        if not "event" in k:
                            continue
                        # If its already started, don't start it again ...
                        try:
                            event = c[k]
                            if active_events[event] == 0:
                                # trace_event = {'name':events_to_name[event]}
                                # trace_event = {'name':lookupEventNameInStr(str(event), pid, pid_events)} # TODO
                                trace_event = {
                                    "name": lookup_event_name_by_type(
                                        tt, pid_events[tt][loc][event]
                                    )
                                }
                                trace_event["ts"] = timer
                                trace_event["ph"] = "B"
                                # trace_event['pid'] = 0
                                trace_event["pid"] = pid
                                trace_event["tid"] = event
                                trace_event["args"] = {}
                                # trace_event['opcode'] = "Multiple" + str(list(c.keys()))
                                trace_events.append(trace_event)
                                #                    active_events[event] = timer  + 1
                                active_events[event] = 1
                        except KeyError:
                            pass
                    # timer = timer + 1 + int(c['cycles'])

                elif "Repeat" in t:
                    timer = timer + int(c["repeats"])
            #        update(timer)


def process_name_metadata(trace_events, pid, trace_type, loc):
    trace_event = {"name": "process_name"}
    trace_event["ph"] = "M"
    trace_event["pid"] = pid
    trace_event["args"] = {}
    # if (pid == 0 or pid == 2):
    if trace_type == 0:
        trace_event["args"]["name"] = "core_trace for tile" + str(loc)
    # if (pid == 1 or pid == 3):
    elif trace_type == 1:
        trace_event["args"]["name"] = "mem_trace for tile" + str(loc)
    elif trace_type == 2:
        trace_event["args"]["name"] = "intfc_trace for tile" + str(loc)
    elif trace_type == 3:
        trace_event["args"]["name"] = "memtile_trace for tile" + str(loc)

    trace_events.append(trace_event)


# def thread_name_metadata(trace_events, pid, tid, pid_events):
def thread_name_metadata(trace_events, trace_type, loc, pid, tid, pid_events):
    # def thread_name_metadata(trace_events, trace_type, pid, tid):
    trace_event = {"name": "thread_name"}
    trace_event["ph"] = "M"
    trace_event["pid"] = pid
    trace_event["tid"] = tid
    trace_event["args"] = {}
    # trace_event['args']['name'] = lookupEventNameInStr(str(tid), pid, pid_events)
    trace_event["args"]["name"] = lookup_event_name_by_type(
        trace_type, pid_events[trace_type][loc][tid]
    )
    trace_events.append(trace_event)

def parse_mlir_trace_events(lines):
    # arg can be column, row, address or value
    # 1: arg: 2: val
    # 3: arg, 4: val
    # 5: arg, 6: val
    # 6: arg, 7: val

    # 1: arg: 2: 0x, 3: val
    # 4: arg, 5: 0x, 6: val
    # 7: arg, 8: 0x, 9: val
    # 10: arg, 11: 0x, 12: val

    pattern = r"aiex.npu.write32\s*\{\s*(\w+)\s*=\s*(0x)?(\w+)\s*:\s*\w+\s*,\s*(\w+)\s*=\s*(0x)?(\w+)\s*:\s*\w+\s*,\s*(\w+)\s*=\s*(0x)?(\w+)\s*:\s*\w+\s*,\s*(\w+)\s*=\s*(0x)?(\w+)\s*:\s*\w+\s*\}"

    pid_events = list()
    for t in range(NumTraceTypes):
        pid_events.append(dict())

    for i in range(len(lines)):
        result = re.search(pattern, lines[i])
        if result:  # match found
            address = 0
            row = 0
            col = 0
            value = 0
            for i2 in range(4):
                var = result.group(3 * i2 + 1)
                if var == "address":
                    if result.group(3 * i2 + 2) == "0x":
                        address = int(result.group(3 * i2 + 3), 16)
                    else:  # assume ''
                        address = int(result.group(3 * i2 + 3))
                elif var == "row":
                    # TODO assume no 0x
                    row = int(result.group(3 * i2 + 3))
                elif var == "column":
                    col = int(result.group(3 * i2 + 3)) + colshift
                    # col = 1 if col == 0 else col
                elif var == "value":
                    if result.group(3 * i2 + 2) == "0x":
                        value = int(result.group(3 * i2 + 3), 16)
                    else:  # assume ''
                        value = int(result.group(3 * i2 + 3))

            key = str(row) + "," + str(col)

            # core event 0
            if address == 0x340E0:  # 213216, match ignoring case
                if pid_events[0].get(key) == None:
                    pid_events[0][key] = [
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                    ]  # TODO no better way to init this?
                # print("Trace event 0 configured to be ",hex(value))
                pid_events[0][key][0] = value & 0xFF
                pid_events[0][key][1] = (value >> 8) & 0xFF
                pid_events[0][key][2] = (value >> 16) & 0xFF
                pid_events[0][key][3] = (value >> 24) & 0xFF
            # core event 1
            elif address == 0x340E4:  # 213220, match ignoring case
                if pid_events[0].get(key) == None:
                    pid_events[0][key] = [
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                    ]  # TODO no better way to init this?
                pid_events[0][key][4] = value & 0xFF
                pid_events[0][key][5] = (value >> 8) & 0xFF
                pid_events[0][key][6] = (value >> 16) & 0xFF
                pid_events[0][key][7] = (value >> 24) & 0xFF
            # mem event 0
            elif address == 0x140E0:  # 82144
                if pid_events[1].get(key) == None:
                    pid_events[1][key] = [
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                    ]  # TODO no better way to init this?
                # print("Trace event 0 configured to be ",hex(value))
                pid_events[1][key][0] = value & 0xFF
                pid_events[1][key][1] = (value >> 8) & 0xFF
                pid_events[1][key][2] = (value >> 16) & 0xFF
                pid_events[1][key][3] = (value >> 24) & 0xFF
            # mem event 1
            elif address == 0x140E4:  # 82148
                if pid_events[1].get(key) == None:
                    pid_events[1][key] = [
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                    ]  # TODO no better way to init this?
                pid_events[1][key][4] = value & 0xFF
                pid_events[1][key][5] = (value >> 8) & 0xFF
                pid_events[1][key][6] = (value >> 16) & 0xFF
                pid_events[1][key][7] = (value >> 24) & 0xFF
            # memtile event 0
            elif address == 0x940E0:  # 606432
                if pid_events[3].get(key) == None:
                    pid_events[3][key] = [
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                    ]  # TODO no better way to init this?
                # print("Trace event 0 configured to be ",hex(value))
                pid_events[3][key][0] = value & 0xFF
                pid_events[3][key][1] = (value >> 8) & 0xFF
                pid_events[3][key][2] = (value >> 16) & 0xFF
                pid_events[3][key][3] = (value >> 24) & 0xFF
            # memtile event 1
            elif address == 0x940E4:  # 606436
                if pid_events[3].get(key) == None:
                    pid_events[3][key] = [
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                    ]  # TODO no better way to init this?
                pid_events[3][key][4] = value & 0xFF
                pid_events[3][key][5] = (value >> 8) & 0xFF
                pid_events[3][key][6] = (value >> 16) & 0xFF
                pid_events[3][key][7] = (value >> 24) & 0xFF
            # TODO intfc event 0, 1 needs to also be defined

    return pid_events


def lookup_event_name_by_type(trace_type, code):
    # def lookup_event_name_by_type(trace_type, loc, event, pid_events):
    event = ""
    # code = pid_events[trace_type][loc][event]
    events_enum = None
    if trace_type == 0:  # Core traces
        events_enum = CoreEvent
    elif trace_type == 1:  # Mem traces
        events_enum = MemEvent
    elif trace_type == 2:  # Shim traces
        events_enum = PLEvent
    elif trace_type == 3:  # MemTile traces
        events_enum = MemTileEvent
    if events_enum is not None and code in set(x.value for x in events_enum):
        event = events_enum(code).name
    else:
        event = "Unknown"
    return event


# This sets up the trace metadata and also assigned the unique pid that's referred
# eleswhere for each process (combination of tile(row,col) and trace type).
# NOTE: This assume the pid_events has already be analyzed and populated.
def setup_trace_metadata(trace_events, pid_events):
    pid = 0
    for t in range(NumTraceTypes):
        # for j in len(pid_events[i]):
        for loc in pid_events[t]:  # return loc
            process_name_metadata(trace_events, pid, t, loc)
            for e in range(8):
                thread_name_metadata(trace_events, t, loc, pid, e, pid_events)
                pid_events[t][loc].append(pid)  # assign unique pid
            pid = pid + 1


# ------------------------------------------------------------------------------
# Script execution start - Open trace file and convert to commands
# ------------------------------------------------------------------------------

opts = parse_args()

DEBUG = opts.debug
if DEBUG:
    print("Debug mode enable\n")

# set colshift based on optional argument
colshift = int(opts.colshift) if opts.colshift else 0

with open(opts.filename, "r") as f:
    toks = f.read().split("\n")

    if DEBUG:
        print("\nDEBUG: toks")
        print(toks)
        print("\n\n")

    # De-interleave core and memory trace
    # [core_toks, mem_toks] = core_trace_and_mem_trace_de_interleave(toks)

    # TODO Change this to list of toks instead of a fixed set?
    toks_list = core_trace_and_mem_trace_de_interleave(toks)

    if DEBUG:
        print("\nDEBUG: stream")
        print(toks_list)
        print("\n\n")

    bs_0 = convert_to_byte_stream(toks_list)

    if DEBUG:
        print("\nDEBUG: byte stream")
        print(bs_0)
        print("\n\n")

    commands_0 = convert_to_commands(bs_0, False)
if DEBUG:
    print("\nDEBUG: commands_0")
    print(commands_0)
    print("\n\n")
    
pid_events = list()

if opts.mlir:
    with open(opts.mlir, "r") as mf:
        lines = mf.read().split("\n")
        pid_events = parse_mlir_trace_events(lines)

trace_events = list()


# ------------------------------------------------------------------------------
# Convert commands to json
# ------------------------------------------------------------------------------

# pid will be a product of number of trace types and trace tiles

setup_trace_metadata(trace_events, pid_events)

if DEBUG:
    print("\nDEBUG: pid events\n")
    print(pid_events)
    print("\n\n")

# TODO Loop over cores/mem to call convert_commands_to_json
convert_commands_to_json(trace_events, commands_0, pid_events)

print(json.dumps(trace_events))
