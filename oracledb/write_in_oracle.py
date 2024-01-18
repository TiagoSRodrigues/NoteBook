import oracledb

# Connection details
hostname = "localhost"
port = "1521"
service_name = "freepdb1"
username = "admin"
password = "new_password"  # Replace with the actual password

# DSN (Data Source Name) configuration
dsn = oracledb.makedsn(hostname, port, service_name=service_name)

# Establishing the connection
connection = oracledb.connect(user=username, password=password, dsn=dsn)

# Creating a cursor
cursor = connection.cursor()

# Creating a new table
create_table_query = """
    CREATE TABLE dummy_table (
        id NUMBER(10) PRIMARY KEY,
        name VARCHAR2(50),
        age NUMBER(3),
        created_date DATE
    )
"""
cursor.execute(create_table_query)

# Inserting data
insert_queries = [
    "INSERT INTO dummy_table (id, name, age, created_date) VALUES (1, 'John Doe', 30, TO_DATE('2022-01-01', 'YYYY-MM-DD'))",
    "INSERT INTO dummy_table (id, name, age, created_date) VALUES (2, 'Jane Smith', 25, TO_DATE('2022-02-15', 'YYYY-MM-DD'))",
    "INSERT INTO dummy_table (id, name, age, created_date) VALUES (3, 'Bob Johnson', 40, TO_DATE('2022-03-10', 'YYYY-MM-DD'))"
]

for query in insert_queries:
    cursor.execute(query)

# Committing the transaction
connection.commit()

# Retrieving and displaying data
cursor.execute("SELECT * FROM dummy_table")
for row in cursor:
    print(row)

cursor.
# Closing the cursor and connection
cursor.close()
connection.close()

print("Data inserted and retrieved successfully.")
