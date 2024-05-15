### [Task 4](task4.md)
You frequently need to convert text files from one format to another.

### Solution:
To solve this problem, you can write a Bash script with a function that takes a filename as an argument and converts it to the desired format using appropriate commands like `awk`, `sed`, or `grep`.

#### Step 1: Write the Conversion Script

Create a new Bash script, let's call it `convert_format.sh`, and add the following content:

```bash
#!/bin/bash

# Function to convert text files to the desired format
convert_format() {
    local input_file="$1"
    local output_file="${input_file%.*}.txt"  # Convert to TXT format by default

    # Add your conversion commands here
    # Example: Convert CSV to TXT
    awk -F ',' '{print $1 "\t" $2}' "$input_file" > "$output_file"

    echo "File converted: $input_file -> $output_file"
}

# Usage message
usage() {
    echo "Usage: $0 <input_file>"
    echo "Converts the input file to the desired format."
}

# Check if input file is provided
if [ $# -ne 1 ]; then
    usage
    exit 1
fi

# Check if input file exists
if [ ! -f "$1" ]; then
    echo "Error: Input file '$1' not found."
    exit 1
fi

# Call the conversion function
convert_format "$1"
```

This script defines a function `convert_format` that takes an input filename as an argument and converts it to the desired format. The example provided converts a CSV file to a tab-separated TXT file using `awk`, but you can replace it with your specific conversion commands.

#### Step 2: Make the Script Executable

Make the script executable using the following command:

```bash
chmod +x convert_format.sh
```

#### Step 3: Run the Script

Execute the script with the input filename to perform the conversion:

```bash
./convert_format.sh input.csv
```

Replace `input.csv` with the path to your input file.

Now, the script will convert the input file to the desired format, providing flexibility and efficiency in converting text files as needed.

This solution streamlines the process of converting text files, reducing manual effort and ensuring consistency in file format conversions.

[Back](tasks.md) | [Next](task5.md) | [Previous](task3.md)