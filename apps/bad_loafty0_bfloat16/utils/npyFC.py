import sys
import numpy as np
import sqlite3

def npy_to_sqlite(npy_file, sqlite_file, table_name="data"):
    # Load the .npy file
    data = np.load(npy_file)

    # Ensure data is 2D (rows and columns)
    if data.ndim == 1:
        data = data.reshape(-1, 1)  # Convert 1D array to 2D

    # Connect to SQLite database (creates if not exists)
    conn = sqlite3.connect(sqlite_file)
    cursor = conn.cursor()

    # Create a table with generic column names
    columns = ", ".join([f"col{i} REAL" for i in range(data.shape[1])])
    cursor.execute(f"CREATE TABLE IF NOT EXISTS {table_name} (id INTEGER PRIMARY KEY, {columns})")

    # Insert data into table
    for row in data:
        cursor.execute(f"INSERT INTO {table_name} ({', '.join([f'col{i}' for i in range(data.shape[1])])}) VALUES ({', '.join(['?' for _ in row])})", tuple(row))

    # Commit and close connection
    conn.commit()
    conn.close()
    print(f"Data saved to {sqlite_file} in table {table_name}")

def main():
    args = sys.argv[1:]
    file_name = args[0]
    npy_to_sqlite(f"data/basic/{file_name}.npy", f"data/basic/{file_name}.sqlite")

if __name__ == "__main__":
    main()