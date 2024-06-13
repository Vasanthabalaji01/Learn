# Apache

## Linux - Ubuntu

- **Installation**
  - Steps to install Apache on a Linux system.

  To install Apache on a Linux system, you can typically use the package manager of your distribution. For example, on Ubuntu:

```bash
sudo apt update
sudo apt install apache2
```
    
- **Setup**
  - Configuration steps after installation, including basic settings and file locations.

  After installation, Apache's main configuration file is usually located at `/etc/apache2/apache2.conf`. You can edit this file to adjust various settings such as ports, server name, and more.
    
- **Site Host in Local**
  - How to host a website locally using Apache.

  To host a website locally using Apache, you'll need to place your website files in the appropriate directory, typically `/var/www/html/`. You can then access your site through a web browser using `http://localhost`.
    
- **Site Host in Cloud**
  - Steps to host a website on a cloud server with Apache.
  
  When hosting a website on a cloud server with Apache, you'll need to ensure that your server's firewall settings allow traffic on port 80 (HTTP) and optionally port 443 (HTTPS). You can then configure Apache to serve your website files as you would on a local server.

[Back](../servers.md)