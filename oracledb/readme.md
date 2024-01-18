# Oracle Database with Python Integration
This guide provides instructions for setting up and testing a connection to an Oracle Database using Docker and Python, specifically with the oracledb package.

## Prerequisites

Oracle Database 
Python environment.
Access to the database with appropriate privileges.

## Installation

### Oracle Database

The docker compose used

``` 
version: '3'
services:
  oracle-db:
    container_name: oracle_db
    image: container-registry.oracle.com/database/free:latest  # Using the latest tag as per documentation
    ports:
      - "1521:1521"  # Port mapping
    environment:
      - ORACLE_ALLOW_REMOTE=true
      - ORACLE_CHARACTERSET=AL32UTF8
      - ENABLE_ARCHIVELOG=true
      - ORACLE_PWD=oracle  # Defina sua própria senha segura
    restart: unless-stopped
    volumes:
      - oracle-data:/opt/oracle/oradata  # Volume for database data persistence
      # Optional: volumes for startup and setup scripts
      # - ./path-to-startup-scripts:/opt/oracle/scripts/startup
      # - ./path-to-setup-scripts:/opt/oracle/scripts/setup

volumes:
  oracle-data:  # Define the volume for data persistence

```
image documentation: <https://container-registry.oracle.com>


#### Configuring the database

Checking the status:

```
docker exec -it oracle_db /bin/bash  # Get a bash shell in the container
lsnrctl status                      # Check the status of the listener
```

Inside the container terminarl, create a user. this will be the user, and password used in the python script.

C## will cratea user 

```
CONNECT SYS as SYSDBA;

CREATE USER c##admin IDENTIFIED BY new_password;
GRANT DBA TO c##admin;


```







### Python environment

```
pip install oracledb
```

python script

```
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

INSERT INTO dummy_table (id, name, age, created_date)
VALUES (1, 'John Doe', 30, TO_DATE('2022-01-01', 'YYYY-MM-DD'));

INSERT INTO dummy_table (id, name, age, created_date)
VALUES (2, 'Jane Smith', 25, TO_DATE('2022-02-15', 'YYYY-MM-DD'));

INSERT INTO dummy_table (id, name, age, created_date)
VALUES (3, 'Bob Johnson', 40, TO_DATE('2022-03-10', 'YYYY-MM-DD'));

-- Commit the changes to save the data
COMMIT;
"



query = "Select * from dummy_table"

# Executing the query
for row in cursor.execute(query):
    print(row)


# Committing the transaction
connection.commit()
  
    
# Closing the cursor and connection
cursor.close()
connection.close()

print("Data inserted successfully.")
```

the output of this script should be

```
(1, 'John Doe', 30, datetime.datetime(2022, 1, 1, 0, 0))
(2, 'Jane Smith', 25, datetime.datetime(2022, 2, 15, 0, 0))
(3, 'Bob Johnson', 40, datetime.datetime(2022, 3, 10, 0, 0))
Data inserted successfully.
```
