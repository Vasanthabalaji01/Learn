### [Task 1](task1.md)
You need to automate the process of backing up important files on your system every day.

### Solution:
To solve this problem, you can write a Bash script that uses `tar` to create a compressed archive of the files and `cron` to schedule the script to run daily.

#### Step 1: Write the Backup Script

Create a new Bash script, let's call it `backup.sh`, and add the following content:

```bash
#!/bin/bash

# Backup script to create compressed archive of important files

# Define variables
backup_dir="/home/vasanth"  # Directory to store backup files
source_dir="/home/vasanth/folder"   # Directory containing files to be backed up
backup_file="backup_$(date +%Y-%m-%d).tar.gz"  # Backup file name with current date

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Create compressed archive of source directory
tar -czf "$backup_dir/$backup_file" "$source_dir" >/dev/null 2>&1

# Check if backup was successful
if [ $? -eq 0 ]; then
  # Print success message
  echo "Backup completed: $backup_file created in $backup_dir"
else
  # Print error message if backup failed
  echo "Backup failed. Please check if the source directory exists and has appropriate permissions."
fi
```

Replace `/path/to/backup` with the directory where you want to store the backup files, and `/path/to/source` with the directory containing the files you want to back up.

#### Step 2: Make the Script Executable

Make the script executable using the following command:

```bash
chmod +x backup.sh
```

#### Step 3: Schedule the Backup

Use `cron` to schedule the backup script to run daily. Edit the crontab file by running:

```bash
crontab -e
```

Add the following line to schedule the backup script to run every day at midnight:

```bash
0 0 * * * /path/to/backup.sh
```

Replace `/path/to/backup.sh` with the full path to your backup script.

![Example](task1.png)

Now, the backup script will run automatically every day at midnight, creating a compressed archive of your important files in the specified backup directory.

![Example](task1_run.png)

This solution automates the process of backing up important files on your system, ensuring that your data is regularly backed up and protected.

[Back](./tasks.md) | [Next](task2.md)
