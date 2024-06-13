   - SQL databases are relational databases that store data in tables and use SQL for querying and manipulating data.
   - They enforce a rigid schema where data is organized into rows and columns.
   - Examples
     - [MySQL](mysql/mysql.md) 
     - PostgreSQL 
     - Oracle
     - [SQL Server](microsoft_sql_server/microsoft_sql_server.md)
     - [SQLite](sqlite/sqlite.md)

## ACID - Atomicity, Consistency, Isolation, Durability
   - ACID is a set of properties that guarantee reliable transaction processing in databases.
   - Atomicity ensures that transactions are either fully completed or fully aborted.
   - Consistency ensures that the database remains in a valid state before and after each transaction.
   - Isolation ensures that concurrent transactions do not interfere with each other.
   - Durability ensures that committed transactions are permanently saved even in the event of a system failure.

## Use Cases

   - Traditional relational databases are well-suited for applications with structured data and complex relationships, such as e-commerce platforms, banking systems, and enterprise resource planning (ERP) systems.
   - SQL databases are preferred when data integrity, consistency, and transactional support are critical requirements.