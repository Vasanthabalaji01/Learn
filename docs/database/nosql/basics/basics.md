## What is No SQL ?

   - NoSQL databases are non-relational databases that provide flexible data models for storing and retrieving unstructured or semi-structured data.
   - They are designed to handle large volumes of data and offer horizontal scalability.
   - NoSQL databases can be categorized into document, key-value, wide-column, and graph databases.

## How NoSQL Works ?

NoSQL databases provide a mechanism for storage and retrieval of data that is modeled in means other than the tabular relations used in relational databases. 

They are designed to handle large volumes of data, and they are optimized for read and write performance, as well as for horizontal scaling.

## BASE - Basically Available, Soft state, Eventually consistent
   - **BASE** is an alternative to ACID designed for distributed systems and NoSQL databases.
   - **Basically Available** guarantees that the system is always available for reads and writes, even in the presence of network partitions or failures.
   - **Soft state** allows the system to be in an inconsistent state temporarily.
   - **Eventually Consistent** ensures that the system eventually converges to a consistent state, but there may be a delay in achieving consistency.

## Components Involved in NoSQL Execution

The specific components involved in executing commands in a NoSQL database can vary depending on the type of NoSQL database, but some common components include

1. **Storage Engine**
    - Manages how data is stored, retrieved, and updated on disk. It includes mechanisms for indexing, compression, and encryption.
   
2. **Query Processor**
    - Interprets and executes queries. The query processor optimizes query execution and may involve multiple nodes in a distributed system.
   
3. **Index Manager**
    - Manages indexes that facilitate faster query responses. Indexes are crucial for optimizing read operations.

4. **Replication Manager**
    - Ensures data is replicated across multiple nodes for high availability and fault tolerance. It manages the replication strategy and consistency levels.

5. **Transaction Coordinator**
    - Manages transactions to ensure atomicity, consistency, isolation, and durability (ACID properties) or BASE properties (Basically Available, Soft state, Eventually consistent), depending on the database's design.

6. **Cluster Manager**
    - Manages the distribution of data across multiple nodes, handling sharding (partitioning) and rebalancing of data.

## Types of NoSQL Commands

NoSQL commands are generally more varied and less standardized compared to SQL commands because of the diversity in NoSQL database types.

- **Data Definition Commands**
      - Used to define, modify, and delete database schemas.

       **Examples**

      - `CREATE` Define a new collection (MongoDB), bucket (Couchbase), or table (Cassandra).
      - `ALTER` Modify the structure of an existing collection or table.
      - `DROP` Delete a collection, bucket, or table.

- **Data Manipulation Commands**
      - Used to insert, update, delete, and retrieve data.

       **Examples**

      - `INSERT` Add a new document (MongoDB), item (DynamoDB), or row (Cassandra).
      - `UPDATE` Modify an existing document, item, or row.
      - `DELETE` Remove a document, item, or row.
      - `FIND` or `SELECT` Query data from the database.

- **Data Control Commands**
      - Manage permissions and control access to data.

       **Examples**

      - `GRANT` Provide access permissions.
      - `REVOKE` Remove access permissions.

- **Administrative Commands**
      - Used for database administration tasks such as backup, restore, and monitoring.
      
       **Examples**
      
      - `BACKUP`: Create a backup of the database.
      - `RESTORE`: Restore the database from a backup.
      - `MONITOR`: Check the status and performance metrics of the database.

## Various NoSQL Databases

NoSQL databases can be broadly categorized into four main types based on their data model

1. **Document Databases**
      - Store data as documents, typically using JSON or BSON formats.
      - **Use Case** Suitable for semi-structured data and hierarchical data storage.
      - **Examples** - [MongoDB](../mongo_db/mongo_db.md), Couchbase.

2. **Key-Value Stores**
      - Store data as key-value pairs.
      - **Use Case** Ideal for caching, session management, and real-time data processing.
      - **Examples** - Redis, [DynamoDB](../dynamo_db/dynamo_db.md).

3. **Column-Family Stores**
      - Store data in columns rather than rows. Each column family contains rows with a flexible number of columns.
      - **Use Case** Suitable for analytical applications and large-scale data warehousing.
      - **Examples** - Cassandra, HBase.

4. **Graph Databases**
      - Store data in graph structures with nodes, edges, and properties.
      - **Use Case** Ideal for applications involving complex relationships, such as social networks and recommendation engines.
      - **Examples** - Neo4j, Amazon Neptune.

## Use Cases

   - NoSQL databases are suitable for applications with large volumes of unstructured or semi-structured data, such as social media platforms, content management systems, and real-time analytics.
   - NoSQL databases excel in scenarios requiring horizontal scalability, high availability, and flexible data models.
   - They are often chosen for use cases involving rapid development, scalability challenges, and dynamic schema requirements.