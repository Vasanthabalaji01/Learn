### [Problem 10](Problem10.md)
You have a script that runs commands with potential errors, and you want to handle these errors gracefully.

### Solution:
To handle errors gracefully in your script, you can implement error handling using constructs like `if` statements to check the exit status of commands (`$?`) and `&&` or `||` operators for conditional execution based on success or failure.

#### Step 1: Implement Error Handling in Your Script

Create a Bash script, let's call it `error_handling.sh`, and add error handling as follows:

```bash
#!/bin/bash

# Run command with potential error
command_that_may_fail

# Check the exit status of the command
if [ $? -ne 0 ]; then
    echo "Error: Command failed."
    exit 1
fi

# Continue with the script if the command succeeded
echo "Command executed successfully."
```

Replace `command_that_may_fail` with the command or commands that you want to run in your script. The `if` statement checks the exit status of the command (`$?`). If the exit status is non-zero, indicating an error, it prints an error message and exits the script with a non-zero exit status.

#### Step 2: Make the Script Executable

Make the script executable:

```bash
chmod +x error_handling.sh
```

#### Step 3: Run the Script

Execute the script:

```bash
./error_handling.sh
```

Now, the script will run the command with potential errors and handle any errors gracefully by checking the exit status and printing an error message if the command fails.

This solution enables you to implement error handling in your Bash scripts, ensuring robustness and graceful handling of errors during script execution.

### Real-Time Project Scenario:

#### Problem:
You have a server where important data is stored, and you need to periodically fetch this data using SSH and execute certain commands on the server. However, network issues or server unavailability may cause errors during the automation process. You want to handle these errors gracefully to ensure the reliability of your automation script.

#### Solution:

To solve this problem, you'll create a Bash script that connects to the remote server via SSH, fetches the data, and executes commands. You'll implement error handling to gracefully handle any errors that may occur during the process.

### Solution Implementation:

#### Step 1: Implement Error Handling in Your Script

Create a Bash script named `data_fetch.sh` and add error handling to it as follows:

```bash
#!/bin/bash

# SSH connection parameters
SERVER="remote_server"
USERNAME="username"
REMOTE_DIR="/path/to/remote/directory"

# Connect to the remote server and fetch data
ssh "$USERNAME@$SERVER" "cd $REMOTE_DIR && fetch_data_command"

# Check the exit status of the SSH command
if [ $? -ne 0 ]; then
    echo "Error: Failed to connect to the remote server or fetch data."
    exit 1
fi

# Continue with executing commands on the remote server
ssh "$USERNAME@$SERVER" "cd $REMOTE_DIR && execute_commands"

# Check the exit status of the SSH command
if [ $? -ne 0 ]; then
    echo "Error: Failed to execute commands on the remote server."
    exit 1
fi

echo "Data fetched and commands executed successfully."
```

Replace `remote_server`, `username`, `fetch_data_command`, and `execute_commands` with the appropriate values for your server and commands.

#### Step 2: Make the Script Executable

Make the script executable:

```bash
chmod +x data_fetch.sh
```

#### Step 3: Run the Script

Execute the script:

```bash
./data_fetch.sh
```

### Explanation:

- The script establishes an SSH connection to the remote server and fetches the data using the `fetch_data_command`.
- After each SSH command, it checks the exit status (`$?`) to determine if the command executed successfully. If the exit status is non-zero, indicating an error, it prints an error message and exits the script with a non-zero exit status.
- If the SSH connection or data fetching fails, the script prints an error message and exits, ensuring graceful error handling.

implementing error handling in your Bash script, you ensure that any errors encountered during the automation process are handled gracefully, enhancing the reliability and robustness of your automation solution. This approach ensures that your automation script can handle real-world scenarios effectively, even in the presence of errors or unexpected conditions.

[Back](https://github.com/Vasanthabalaji01/Linux/blob/c8b560d721b6d0660daebc49148e879b363ade5c/bash.md#steps) | [Previous](Problem9.md)