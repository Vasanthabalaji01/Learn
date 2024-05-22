# SQLite

## No Prerequisites

SQLite is a lightweight, serverless database engine that requires minimal hardware resources.SQLite can run on almost any hardware configuration, including low-power devices like smartphones and IoT devices.

## Installation

SQLite is often included as part of the standard libraries in many programming languages, and it's also available as a standalone package for various operating systems.

- [SQLite Downloads](https://www.sqlite.org/download.html)

Choose the appropriate version of SQLite based on your operating system and architecture, and follow the instructions provided on the download page to complete the installation.

## How to Connect with Application

SQLite databases are accessed using SQL queries directly within the application code. There is no separate server process that needs to be started or configured.

### Connecting with Python

You can connect to SQLite from Python using the built-in `sqlite3` module.

example

```python
import sqlite3

# Connect to SQLite database (creates if doesn't exist)
conn = sqlite3.connect('your_database.db')

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

You can connect to SQLite from Node.js using the `sqlite3` package.

example

```javascript
const sqlite3 = require('sqlite3').verbose();

// Connect to SQLite database (creates if doesn't exist)
const db = new sqlite3.Database('your_database.db');

// Execute query
db.all('SELECT * FROM your_table', (err, rows) => {
  if (err) {
    console.error(err.message);
    return;
  }
  console.log(rows);
});

// Close connection
db.close();
```

### Connecting with Ruby

You can connect to SQLite from Ruby using the `sqlite3` gem.

example

```ruby
require 'sqlite3'

# Connect to SQLite database (creates if doesn't exist)
db = SQLite3::Database.new 'your_database.db'

# Execute query
db.execute('SELECT * FROM your_table') do |row|
  p row
end

# Close connection (not required for SQLite)
```

SQLite is often used as a prebuilt, embedded database engine within programming languages and applications. Its lightweight nature and simplicity make it an excellent choice for scenarios where a standalone database solution is needed without the overhead of a separate database server. 

[Back](../basics/basics.md) | [Database](../../database.md)