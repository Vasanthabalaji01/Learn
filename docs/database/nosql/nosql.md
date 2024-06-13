# [NoSQL (Not Only SQL)](basics/basics.md)
   - NoSQL databases are non-relational databases that provide flexible data models for storing and retrieving unstructured or semi-structured data.
   - They are designed to handle large volumes of data and offer horizontal scalability.
   - NoSQL databases can be categorized into document, key-value, wide-column, and graph databases.
   - Examples 
     - [MongoDB](mongo_db/mongo_db.md)
     - Cassandra
     - [DynamoDB](dynamo_db/dynamo_db.md)
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

[Back](../database.md) | [Basics](basics/basics.md)