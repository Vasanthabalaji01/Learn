# Database

A database is an organized collection of structured data, typically stored electronically in a computer system. It is designed to efficiently manage, retrieve, and manipulate data according to the needs of the users or applications. Databases are fundamental components of modern information systems, enabling data storage, retrieval, modification, and deletion through standardized query languages and interfaces.

## Types of Databases

## [SQL (Structured Query Language)](sql/sql.md)
   - SQL databases are relational databases that store data in tables and use SQL for querying and manipulating data.
   - They enforce a rigid schema where data is organized into rows and columns.
   - Examples
     - [MySQL](sql/mysql/mysql.md) 
     - PostgreSQL 
     - Oracle
     - [SQL Server](sql/microsoft_sql_server/microsoft_sql_server.md)
     - [SQLite](sql/sqlite/sqlite.md)

#### ACID - Atomicity, Consistency, Isolation, Durability
   - ACID is a set of properties that guarantee reliable transaction processing in databases.
   - Atomicity ensures that transactions are either fully completed or fully aborted.
   - Consistency ensures that the database remains in a valid state before and after each transaction.
   - Isolation ensures that concurrent transactions do not interfere with each other.
   - Durability ensures that committed transactions are permanently saved even in the event of a system failure.

#### Use Cases

   - Traditional relational databases are well-suited for applications with structured data and complex relationships, such as e-commerce platforms, banking systems, and enterprise resource planning (ERP) systems.
   - SQL databases are preferred when data integrity, consistency, and transactional support are critical requirements.

## [NoSQL (Not Only SQL)](nosql/nosql.md)
   - NoSQL databases are non-relational databases that provide flexible data models for storing and retrieving unstructured or semi-structured data.
   - They are designed to handle large volumes of data and offer horizontal scalability.
   - NoSQL databases can be categorized into document, key-value, wide-column, and graph databases.
   - Examples 
     - [MongoDB](nosql/mongo_db/mongo_db.md)
     - Cassandra
     - [DynamoDB](nosql/dynamo_db/dynamo_db.md)
     - Couchbase
     - Neo4j

#### BASE - Basically Available, Soft state, Eventually consistent
   - BASE is an alternative to ACID designed for distributed systems and NoSQL databases.
   - Basically Available guarantees that the system is always available for reads and writes, even in the presence of network partitions or failures.
   - Soft state allows the system to be in an inconsistent state temporarily.
   - Eventually Consistent ensures that the system eventually converges to a consistent state, but there may be a delay in achieving consistency.


#### Use Cases

   - NoSQL databases are suitable for applications with large volumes of unstructured or semi-structured data, such as social media platforms, content management systems, and real-time analytics.
   - NoSQL databases excel in scenarios requiring horizontal scalability, high availability, and flexible data models.
   - They are often chosen for use cases involving rapid development, scalability challenges, and dynamic schema requirements.

[Back](../learn.md)  