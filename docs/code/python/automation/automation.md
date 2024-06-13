# Automation

Automation in Python involves streamlining repetitive tasks by writing scripts or programs to perform them automatically.

### 1. File Manipulation
Python provides built-in modules and libraries for interacting with files and directories, making it easy to automate tasks related to file management, such as reading, writing, copying, moving, and deleting files.

- **Example**
  ```python
  import os

  # List all files in a directory
  files = os.listdir('/path/to/directory')

  # Create a new directory
  os.mkdir('/path/to/new_directory')

  # Copy a file
  os.system('cp file1.txt file2.txt')

  # Delete a file
  os.remove('file.txt')
  ```

### 2. Web Scraping
Web scraping involves extracting data from websites automatically. Python offers powerful libraries like BeautifulSoup and Scrapy for web scraping tasks, allowing you to retrieve HTML content, parse it, and extract relevant information.

- **Example** (using BeautifulSoup):
  ```python
  from bs4 import BeautifulSoup
  import requests

  # Send a GET request to the webpage
  response = requests.get('https://example.com')

  # Parse HTML content
  soup = BeautifulSoup(response.text, 'html.parser')

  # Extract specific data from the webpage
  titles = soup.find_all('h1')
  ```

### 3. GUI Automations
Python can be used to automate interactions with graphical user interfaces (GUIs) of desktop applications. Libraries like pyautogui and pywinauto allow you to simulate mouse clicks, keyboard inputs, and window manipulations to automate GUI-based tasks.

- **Example** (using pyautogui)
  ```python
  import pyautogui
  import time

  # Move the mouse to specific coordinates and click
  pyautogui.moveTo(100, 100, duration=1)
  pyautogui.click()

  # Type a message
  pyautogui.typewrite('Hello, world!')

  # Simulate a keyboard press
  pyautogui.press('enter')
  ```

### Network Automation
Network automation involves automating tasks related to network devices and infrastructure, such as configuration management, monitoring, and provisioning. Python, along with libraries like Paramiko and Netmiko, can be used to automate interactions with network devices via SSH or Telnet.

- **Example** (using Netmiko)
  ```python
  from netmiko import ConnectHandler

  # Define device parameters
  device = {
      'device_type': 'cisco_ios',
      'host': 'router_ip',
      'username': 'username',
      'password': 'password',
  }

  # Connect to the device
  ssh_connection = ConnectHandler(**device)

  # Send commands to the device
  output = ssh_connection.send_command('show interfaces')
  ```

[Back](../python.md) | [Code](../../code.md)