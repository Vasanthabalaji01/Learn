# Nginx

## Linux - Ubuntu

- **Installation**
  - Installing Nginx on a Linux distribution.

  Nginx can be installed on a Linux system using the package manager of your distribution. For example, on Ubuntu:

```bash
sudo apt update
sudo apt install nginx
```
    
- **Setup**
  - Configuration steps post-installation, including server blocks and basic settings.

   After installation, Nginx's main configuration file is typically located at `/etc/nginx/nginx.conf`. You can configure server blocks in separate files within the `/etc/nginx/sites-available/` directory and enable them by creating symbolic links in the `/etc/nginx/sites-enabled/` directory.

- **Site Host in Local**
  - Hosting a website locally using Nginx.

  To host a website locally using Nginx, you'll need to create a server block configuration file for your website and place it in the `/etc/nginx/sites-available/` directory. After enabling the server block, you can access your site through a web browser using `http://localhost`.
    
- **Site Host in Cloud**
  - Steps to host a website on a cloud server with Nginx.

  When hosting a website on a cloud server with Nginx, you'll need to ensure that your server's firewall settings allow traffic on port 80 (HTTP) and optionally port 443 (HTTPS). You can then configure Nginx to serve your website files and manage domain configuration as needed.

[Back](../servers.md)