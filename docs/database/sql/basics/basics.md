# SQL Bascis

## How SQL Works

When you execute an SQL command in any Relational Database Management System (RDBMS), the system processes the command to determine the best way to fulfill the request. This involves several components that work together to interpret and execute the query efficiently.

## Components Involved in SQL Execution

1. **Query Dispatcher**

   - The query dispatcher directs the query to the appropriate query processor. It ensures that the query reaches the correct component for further processing.

2. **Optimization Engines**
   - Optimization engines analyze different ways to execute the query and choose the most efficient execution plan. They consider various factors like indexes, joins, and available resources to optimize the query performance.

3. **Classic Query Engine**
   - Handles non-SQL queries or legacy queries that might be part of the system. It's responsible for queries that don't conform to modern SQL standards but still need processing.

4. **SQL Query Engine**
   - Specifically designed to handle SQL queries. It interprets and executes SQL commands, ensuring that the data retrieval and manipulation are performed according to the SQL standard.

## Types of SQL Commands

SQL commands are categorized into five types based on their functionality

**DDL (Data Definition Language)**

   - Used to define and modify the structure of database objects such as tables, indexes, and schemas.

   - **Commands**

     - `CREATE`: Creates a new database object.
     - `ALTER`: Modifies an existing database object.
     - `DROP`: Deletes a database object.
     - `TRUNCATE`: Removes all records from a table, but the structure remains.

**DML (Data Manipulation Language)**

   - Used for managing data within database objects.

   - **Commands**

     - `SELECT`: Retrieves data from the database.
     - `INSERT`: Adds new data into a table.
     - `UPDATE`: Modifies existing data in a table.
     - `DELETE`: Removes data from a table.

**DCL (Data Control Language)**

   - Used to control access to data in the database.

   - **Commands**

     - `GRANT`: Gives a user permission to perform specific tasks.
     - `REVOKE`: Removes permissions from a user.

**TCL (Transaction Control Language)**

   - Used to manage transactions in the database, ensuring data integrity and consistency.

   - **Commands**
   
     - `COMMIT` Saves the transaction changes to the database.
     - `ROLLBACK` Reverts the transaction changes if something goes wrong.
     - `SAVEPOINT` Sets a point within a transaction to which a rollback can be performed.

**DQL (Data Query Language)**

   - Primarily used to query the database and retrieve data.

   - **Command**

     - `SELECT` The only DQL command, used to fetch data from the database based on specified criteria.

## Types of SQL Databases

1. **Commercial SQL Databases**
   - Organized into tables with predefined schemas.
   - **Use Case** Suitable for enterprise-level applications requiring robust features and support.
   - **Examples** - Oracle Database, [Microsoft SQL Server](../microsoft_sql_server/microsoft_sql_server.md), IBM Db2

2. **Open Source SQL Databases**
   - Data in tables with community-supported extensions.
   - **Use Case** Ideal for startups and small to medium-sized businesses.
   - **Examples** - [MySQL](../mysql/mysql.md), PostgreSQL, MariaDB

3. **Embedded SQL Databases**
   - Lightweight and self-contained within applications.
   - **Use Case** Perfect for mobile and desktop applications with minimal configuration.
   - **Examples** - [SQLite](../sqlite/sqlite.md), Firebird

4. **Cloud-Based SQL Databases**
   - Managed by cloud providers, scalable tables.
   - **Use Case** Best for applications needing high availability and scalability.
   - **Examples** - Amazon RDS, Google Cloud SQL, Azure SQL Database

5. **Specialized SQL Databases**
   - Optimized tables for specific use cases.
   - **Use Case** Designed for specialized workloads and high-performance analytics.
   - **Examples** - SAP HANA, Teradata