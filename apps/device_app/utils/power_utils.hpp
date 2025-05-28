#include <chrono>
#include <string>

double readEnergy(const std::string& path) {
    std::ifstream file(path);
    double value;
    if (file >> value) return value;
    return 0.0;
}

double calculatePower(double energy_before, double energy_after, double duration) {
    return ((energy_after - energy_before) / 1e6) / duration;
}

tuple<std::chrono::_V2::system_clock::time_point, double, double> measure() {
    std::string pkg = "/sys/class/powercap/intel-rapl:0/energy_uj";
    std::string core = "/sys/class/powercap/intel-rapl:0/intel-rapl:0:0/energy_uj";
    double e_before_pkg = readEnergy(pkg);
    double e_before_core = readEnergy(core);
    auto ts = std::chrono::high_resolution_clock::now();
    return {ts, e_before_pkg, e_before_core};
}