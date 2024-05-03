### [Problem 6](Problem6.md)
You have a directory with multiple files, and you want to perform the same operation on each file.

### Solution:
To solve this problem, you can write a Bash script with a `for` loop that iterates over each file in the directory and executes the desired operation.

#### Step 1: Write the Script

Create a new Bash script, let's call it `batch_operation.sh`, and add the following content:

```bash
#!/bin/bash

# Directory containing files
directory="/path/to/directory"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' not found."
    exit 1
fi

# Iterate over each file in the directory
for file in "$directory"/*; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"

        # Add your commands to perform the desired operation on each file
        # Example: Count the number of lines in the file
        lines=$(wc -l < "$file")
        echo "Number of lines: $lines"
    fi
done
```

Replace `/path/to/directory` with the path to the directory containing your files.

This script iterates over each file in the specified directory using a `for` loop. For each file, it checks if it's a regular file (`-f`) and then executes the desired operation inside the loop. In the example provided, it counts the number of lines in each file using the `wc -l` command.

#### Step 2: Make the Script Executable

Make the script executable using the following command:

```bash
chmod +x batch_operation.sh
```

#### Step 3: Run the Script

Execute the script to perform the operation on each file in the directory:

```bash
./batch_operation.sh
```

Now, the script will iterate over each file in the directory and execute the desired operation on each file, allowing you to perform batch operations efficiently.

This solution automates the process of performing the same operation on multiple files, saving you time and effort.

[Back](https://github.com/Vasanthabalaji01/Linux/blob/c8b560d721b6d0660daebc49148e879b363ade5c/bash.md#steps) | [Next](Problem7.md) | [Previous](Problem5.md)