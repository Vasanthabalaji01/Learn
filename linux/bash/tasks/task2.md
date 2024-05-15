### [Task 2](task2.md)
You want to create a script that automatically updates the software packages on your system.

### Solution:
To solve this problem, you can write a Bash script that uses package manager commands like `apt-get` (for Debian-based systems) or `yum` (for Red Hat-based systems) to update the system packages.

#### Step 1: Write the Update Script

Create a new Bash script, let's call it `update_packages.sh`, and add the following content:

```bash
#!/bin/bash

# Script to update software packages on the system

# Update package lists
apt-get update   # For Debian-based systems
# yum update      # For Red Hat-based systems

# Upgrade installed packages
apt-get upgrade -y   # For Debian-based systems
# yum upgrade -y      # For Red Hat-based systems

# Clean up obsolete packages
apt-get autoremove -y   # For Debian-based systems
# yum autoremove -y      # For Red Hat-based systems

# Print success message
echo "Packages updated successfully."
```

This script performs the following tasks:
- Updates the package lists to get information on the newest versions of packages and their dependencies.
- Upgrades the installed packages to their latest versions.
- Cleans up obsolete packages that are no longer needed.

For Debian-based systems (e.g., Ubuntu), use `apt-get` commands. For Red Hat-based systems (e.g., CentOS), use `yum` commands.

#### Step 2: Make the Script Executable

Make the script executable using the following command:

```bash
chmod +x update_packages.sh
```

#### Step 3: Run the Script

Execute the script to update the software packages on your system:

```bash
./update_packages.sh
```

![Example](task2.png)

Now, the script will automatically update the software packages on your system, ensuring that you have the latest versions installed.

![Example](task2_run.png)

This solution automates the process of updating software packages, helping you keep your system secure and up-to-date with the latest features and bug fixes.

[Back](tasks.md) | [Next](task3.md) | [Previous](task1.md)
