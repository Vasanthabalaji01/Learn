You have a CSV file with data in the format "name,age,email" and you want to extract only the email addresses.

## Solution
To solve this problem, you can write a Bash script that uses `cut` or `awk` to extract the email addresses from each line of the file.

### Step 1: Write the Script

Create a new Bash script, let's call it `extract_emails.sh`, and add the following content:

```bash
#!/bin/bash

# CSV file containing data
csv_file="/path/to/csv/file.csv"

# Check if the file exists
if [ ! -f "$csv_file" ]; then
    echo "Error: CSV file '$csv_file' not found."
    exit 1
fi

# Extract email addresses from each line of the CSV file
# Using cut command
cut -d ',' -f 3 "$csv_file"

# Using awk command
awk -F ',' '{print $3}' "$csv_file"
```

Replace `/path/to/csv/file.csv` with the path to your CSV file containing the data in the format "name,age,email".

This script uses the `cut` command to extract the third field (email) from each line of the CSV file. You can also use the `awk` command (commented out in the script) for the same purpose.

### Step 2: Make the Script Executable

Make the script executable using the following command:

```bash
chmod +x extract_emails.sh
```

### Step 3: Run the Script

Execute the script to extract email addresses from the CSV file:

```bash
./extract_emails.sh
```

Now, the script will extract email addresses from each line of the CSV file, providing you with a list of email addresses.

This solution simplifies the process of extracting specific data from CSV files, allowing you to automate data extraction tasks efficiently.