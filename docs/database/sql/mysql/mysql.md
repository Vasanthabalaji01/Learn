# MySQL

## Prerequisites

The hardware requirements can vary based on the version and edition of MySQL you intend to install. Generally, the prerequisites include

- **Processor** Minimum 1 GHz CPU.
- **Memory (RAM)** Minimum 512 MB (recommended 1 GB or more).
- **Hard Disk Space** Minimum 500 MB of available hard disk space.
- **Operating System** Supported versions of Windows, Linux, or macOS.
- **Network** Access to a network for downloading installation files and updates.

## Installation

You can download the installation files for MySQL from the official MySQL website.

- [MySQL Downloads](https://dev.mysql.com/downloads/)

Choose the appropriate version and edition of MySQL based on your requirements (e.g., MySQL Community Server, MySQL Enterprise Edition), and follow the instructions provided on the download page to complete the installation.

## How to Connect with Application

Once MySQL is installed, you can connect to it using various applications and programming languages.

### Connecting with Python

You can connect to MySQL from Python using the `mysql-connector-python` library or the `pymysql` library.

example using `mysql-connector-python`

```python
import mysql.connector

# Establish connection
conn = mysql.connector.connect(
    host="your_host",
    user="your_username",
    password="your_password",
    database="your_database"
)

# Create a cursor
cursor = conn.cursor()

# Execute SQL query
cursor.execute("SELECT * FROM your_table")

# Fetch data
for row in cursor.fetchall():
    print(row)

# Close connection
conn.close()
```

### Connecting with Node.js

You can connect to MySQL from Node.js using the `mysql` library.

example

```javascript
const mysql = require('mysql');

// Configuration
const config = {
    host: 'your_host',
    user: 'your_username',
    password: 'your_password',
    database: 'your_database'
};

// Connect to database
const connection = mysql.createConnection(config);

// Execute query
connection.query('SELECT * FROM your_table', (error, results, fields) => {
    if (error) throw error;
    console.log(results);
});

// Close connection
connection.end();
```

### Connecting with Ruby

You can connect to MySQL from Ruby using the `mysql2` gem.

example

```ruby
require 'mysql2'

# Configuration
config = {
  :host => 'your_host',
  :username => 'your_username',
  :password => 'your_password',
  :database => 'your_database'
}

# Connect to database
client = Mysql2::Client.new(config)

# Execute query
results = client.query('SELECT * FROM your_table')

# Process result
results.each do |row|
  p row
end

# Close connection
client.close
```

Make sure to replace placeholders (like `your_host`, `your_database`, etc.) with your actual server and database details.

These examples demonstrate how to establish connections with mysql using different programming languages. Ensure that you have the necessary drivers and libraries installed for each language before attempting to connect.

[Back](../basics/basics.md) | [Database](../../database.md)