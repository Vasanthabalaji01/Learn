# Basic of Webservers

## What is a Web Server?

A web server is a dedicated software (and often hardware) that serves web pages to users upon request. It is responsible for receiving requests from users' web browsers, processing those requests, and delivering the requested web pages. The primary objective of a web server is to collect, process, and provide web pages to users.

## How Do Web Servers Work?

Web servers operate on both hardware and software levels.

1. **User Request** A user types a URL into their web browser.
2. **IP Address Retrieval** The browser retrieves the IP address of the server hosting the website, either through DNS or cache memory.
3. **HTTP Request** The browser sends an HTTP request to the server for the web page.
4. **Server Response** The server's HTTP software processes the request, retrieves the necessary files (HTML, images, etc.), and sends them back to the browser.
5. **Display** The browser receives the data and renders the web page.

## Types of Web Servers

Web servers can serve static and dynamic content:

1. **Static Web Servers** Serve fixed content (HTML files, images, etc.). They deliver web files as-is.
2. **Dynamic Web Servers** Serve content that can change based on user interaction or other factors. They include an application server and database, enabling content to be generated dynamically.

## Examples of Web Server Software

**Apache HTTP Server** Open-source, widely used, supports multiple OS.
**Microsoft Internet Information Services (IIS)** High-performance, integrated with Microsoft platforms.
**Nginx** Open-source, known for efficiency and scalability.
**Lighttpd** Fast, secure, open-source, runs on various OS.
**Sun Java System Web Server** Free but not open-source, supports multiple technologies.

## Security Methods

**Reverse Proxy** Intermediary server that hides internal servers.
**Access Restriction** Limits access using methods like SSH.
**Regular Updates** Keeps the server patched and secure.
**Network Monitoring** Ensures no unauthorized activities.
**Firewall and SSL** Protect against unauthorized access and secure data transmission.

## Practical Uses

Web servers are used for

- Hosting websites.
- Sending and receiving emails via SMTP.
- Handling file transfers via FTP.
- Running web-based applications with server-side scripting.