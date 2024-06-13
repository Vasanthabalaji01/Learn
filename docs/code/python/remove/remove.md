## Removing up Python on Windows and Linux

### Windows

1. **Open Control Panel**
   - Click on the Start menu.
   - Type "Control Panel" and press Enter.

2. **Uninstall a Program**
   - In the Control Panel, navigate to "Programs" > "Programs and Features".

3. **Find Python**
   - Look for Python in the list of installed programs.

4. **Uninstall Python**
   - Right-click on Python and select "Uninstall" or "Change".
   - Follow the uninstallation wizard to remove Python from your system.

### Linux

The process to uninstall Python varies slightly depending on the Linux distribution and how Python was installed.

#### If Python was installed using the package manager

1. **Open a Terminal**
   - Use the terminal emulator of your Linux distribution.

2. **Run the Uninstall Command**
   - Run the appropriate command to uninstall Python:
     - For Python 3:
       - Debian/Ubuntu: `sudo apt remove python3`
       - CentOS/RHEL: `sudo yum remove python3`
       - Fedora: `sudo dnf remove python3`
     - For Python 2:
       - Debian/Ubuntu: `sudo apt remove python`
       - CentOS/RHEL: `sudo yum remove python`
       - Fedora: `sudo dnf remove python`

3. **Optional: Remove Configuration Files**
   - You can also remove any configuration files associated with Python by using the purge option:
     - For Python 3: `sudo apt purge python3`
     - For Python 2: `sudo apt purge python`

4. **Verify Uninstallation**
   - After uninstallation, verify that Python has been removed by attempting to run `python3` or `python` in the terminal. If Python is uninstalled correctly, you should see a message indicating that the command is not found.