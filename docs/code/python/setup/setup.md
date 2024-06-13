## Setting up Python on Windows and Linux

### Windows

1. **Download Python**
   - Go to the official Python website: [python.org](https://www.python.org/).
   - Click on the "Downloads" tab.
   - Download the latest version of Python for Windows.

2. **Run the Installer**
   - Once downloaded, run the installer.
   - Check the box that says "Add Python X.X to PATH" during installation. This will make Python accessible from the command line.
   - Follow the installation wizard, and Python will be installed on your system.

3. **Verify Installation**
   - Open Command Prompt by searching for "cmd" in the Start menu.
   - Type `python --version` and press Enter. This should display the installed Python version.

### Linux

Python usually comes pre-installed on many Linux distributions. However, if you need to install it or update it, follow these steps:

1. **Update Package Lists**
   - Open a terminal.
   - Run the command appropriate for your package manager:
     - For Debian/Ubuntu: `sudo apt update`
     - For CentOS/RHEL: `sudo yum update`
     - For Fedora: `sudo dnf update`

2. **Install Python**
   - Run the appropriate command to install Python:
     - For Python 3: 
       - Debian/Ubuntu: `sudo apt install python3`
       - CentOS/RHEL: `sudo yum install python3`
       - Fedora: `sudo dnf install python3`
     - For Python 2 (if required, but it's recommended to use Python 3):
       - Debian/Ubuntu: `sudo apt install python`
       - CentOS/RHEL: `sudo yum install python`
       - Fedora: `sudo dnf install python`

3. **Verify Installation**
   - After installation, verify Python by typing `python3 --version` for Python 3 or `python --version` for Python 2 (if installed). This should display the installed Python version.