# firewall

# Firewall

A firewall is a network security device or software that monitors and controls incoming and outgoing network traffic based on predetermined security rules. It acts as a barrier between a trusted internal network and untrusted external networks, such as the Internet, to prevent unauthorized access and protect against cyber threats.

## How It Works:

1. **Packet Inspection**: Firewalls inspect packets of data as they pass through the network. They analyze attributes such as source and destination IP addresses, port numbers, and protocol types.

2. **Rule-Based Filtering**: Firewalls enforce security policies defined by administrators through rulesets. These rules determine whether to allow, deny, or log network traffic based on predefined criteria.

3. **Stateful Inspection**: In stateful inspection, firewalls maintain a record of the state of active connections. They track the state of TCP sessions, such as SYN, SYN-ACK, and ACK packets, to ensure that only legitimate traffic is allowed into the network.

4. **Logging and Reporting**: Firewalls log information about network traffic and security events for analysis and audit purposes. They generate reports to provide visibility into network activity and potential security threats.

## Types:

### Stateful Firewall:
Stateful firewalls keep track of the state of active network connections and make decisions based on the context of each connection. They maintain connection state tables to track session information, allowing them to enforce more granular security policies.

### Stateless Firewall:
Stateless firewalls filter network traffic based solely on the attributes of individual packets, such as source and destination IP addresses, port numbers, and protocol types. They do not maintain information about the state of active connections, making them less resource-intensive but less effective at detecting certain types of attacks.

## Why It's Used:

- **Network Security**: Firewalls protect against unauthorized access, malware, and other cyber threats by controlling the flow of network traffic.
- **Access Control**: Firewalls enforce security policies to restrict access to sensitive resources and services based on predefined rules.
- **Compliance Requirements**: Firewalls help organizations comply with regulatory requirements and industry standards related to data security and privacy.
- **Network Performance**: Firewalls can improve network performance by filtering out unwanted traffic and optimizing bandwidth usage.

## Real-Time Example:

Imagine a company's network protected by a firewall. The firewall is configured to allow incoming web traffic on port 80 (HTTP) and outgoing email traffic on port 25 (SMTP) while blocking all other incoming connections. When an employee tries to access a malicious website, the firewall detects the attempt and blocks the connection, preventing malware from entering the network. Similarly, when an external attacker tries to exploit vulnerabilities in the network, the firewall blocks the malicious traffic, protecting the company's assets and data from unauthorized access and cyber attacks.

[Back](../basic_concepts.md) | [Networking](../../networking.md)