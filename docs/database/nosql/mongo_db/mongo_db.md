# MongoDB

## Prerequisites

The hardware requirements can vary based on factors like the size of your data and expected workload.

- **Processor**: 64-bit x86 architecture CPU (32-bit systems are not supported).
- **Memory (RAM)**: Minimum 4 GB (recommended 8 GB or more).
- **Hard Disk Space**: Minimum 1 GB of available hard disk space for MongoDB binaries, additional space for data storage.
- **Operating System**: Supported versions of Windows, Linux, or macOS.
- **Network**: Access to a network for downloading installation files and updates.

## Installation

You can download the installation files for MongoDB from the official MongoDB website.

- [MongoDB Downloads](https://www.mongodb.com/try/download/community)

Choose the appropriate version of MongoDB based on your operating system and follow the instructions provided on the download page to complete the installation.

## How to Connect with Application

MongoDB provides drivers and libraries for various programming languages to connect and interact with the database.

### Connecting with Python

You can connect to MongoDB from Python using the `pymongo` library.

example

```python
from pymongo import MongoClient

# Connect to MongoDB server
client = MongoClient('mongodb://localhost:27017/')

# Access database
db = client['your_database']

# Access collection
collection = db['your_collection']

# Insert document
result = collection.insert_one({'key': 'value'})

# Query documents
for doc in collection.find():
    print(doc)

# Close connection
client.close()
```

### Connecting with Node.js

You can connect to MongoDB from Node.js using the `mongodb` driver.

example

```javascript
const { MongoClient } = require('mongodb');

// Connection URI
const uri = 'mongodb://localhost:27017/';

// Connect to MongoDB server
const client = new MongoClient(uri);

async function main() {
  try {
    // Connect to server
    await client.connect();

    // Access database
    const db = client.db('your_database');

    // Access collection
    const collection = db.collection('your_collection');

    // Insert document
    const result = await collection.insertOne({ key: 'value' });

    // Query documents
    const docs = await collection.find({}).toArray();
    console.log(docs);
  } finally {
    // Close connection
    await client.close();
  }
}

main().catch(console.error);
```

### Connecting with Ruby

You can connect to MongoDB from Ruby using the `mongo` and `bson` gems.

example

```ruby
require 'mongo'

# Connection URI
uri = 'mongodb://localhost:27017/'

# Connect to MongoDB server
client = Mongo::Client.new(uri)

# Access database
db = client.database

# Access collection
collection = db['your_collection']

# Insert document
result = collection.insert_one({ key: 'value' })

# Query documents
collection.find.each { |doc| puts doc }

# Close connection
client.close
```

These examples demonstrate how to establish connections with mysql using different programming languages. Ensure that you have the necessary drivers and libraries installed for each language before attempting to connect.

[Back](../basics/basics.md) | [Database](../../database.md)