# Networking
Concepts you should be familiar with.

In Depth

[OSI Model](osi_model/osi_model.md) | [IP Addresses](ip_address/ip_address.md) | [MAC Addresses](mac_address/mac_address.md) | [Routing and Switching](routing_switching/routing_switching.md) | [TCP IP](tcp_ip/tcp_ip.md) | [TCP and UDP](tcp_udp/tcp-udp.md) |  [DNS](dns/dns.md) | [VPN](vpn/vpn.md) | [TLS and SSL](tls_ssl/tls_ssl.md) | [Firewall](firewall/firewall.md)

# How Does a Networking Work?

Computer networks operate on the fundamental components of nodes and links. Nodes encompass devices such as modems, routers, and terminals, facilitating data communication or connecting multiple computers. Links, on the other hand, refer to the physical mediums like wires, cables, or wireless channels that enable connectivity in computer networks.

The functionality of computer networks relies on established rules and protocols governing the transmission and reception of data across these links. Each device within the network is assigned a unique IP address for identification and communication purposes.

- **Network** - A network is a collective term for interconnected computers and devices, facilitating communication and data exchange.
- **Nodes** - Nodes refer to the devices connected within a network, encompassing computers, servers, printers, routers, switches, and other peripherals.
- **Protocol** - Protocols are sets of rules and standards governing data transmission across a network. Examples include TCP/IP, HTTP, and FTP.
- **Topology** - Network topology pertains to the arrangement, both physical and logical, of nodes within a network. Common topologies include bus, star, ring, mesh, and tree configurations.
- **Service Provider Networks** - These networks allow leasing of network capacity and functionality from providers, covering wireless communications, data carriers, etc. (Internet Serivies Provider - ISP)
- **IP Address** - An IP address is a unique numerical identifier assigned to each device within a network. It enables device identification and communication
- **DNS** - The Domain Name System (DNS) is a protocol translating human-readable domain names (like www.google.com) into computer-understandable IP addresses.
- **Firewall** - A firewall is a security mechanism monitoring and controlling network traffic, safeguarding against unauthorized access and security threats.

# Types of Enterprise Computer Networks

## LAN (Local Area Network)
A Local Area Network (LAN) is a network that covers a small area, such as an office or a home. LANs are typically used to connect computers and other devices within a building or a campus.

## WAN (Wide Area Network)
A Wide Area Network (WAN) is a network that covers a large geographic area, such as a city, country, or even the entire world. WANs are used to connect LANs together and are typically used for long-distance communication.

## Cloud Networks
Cloud Networks can be visualized as a Wide Area Network (WAN) as they can be hosted on public or private cloud service providers. Cloud networks consist of Virtual Routers, Firewalls, etc., and are available on-demand.

## Open System
An open system is a system that is connected to the network and is ready for communication.

## Closed System
A closed system is a system that is not connected to the network and cannot be communicated with.

# Types of Computer Network Architecture

## Client-Server Architecture
Client-Server Architecture is a type of Computer Network Architecture in which Nodes can be Servers or Clients. Here, the server node can manage the Client Node Behaviour.

## Peer-to-Peer Architecture
In Peer-to-Peer (P2P) Architecture, there is not any concept of a Central Server. Each device is free for working as either a client or server.

# Network Devices

Network devices are essential components of computer networks, facilitating communication between multiple devices or hosts. These devices help in the efficient transmission of data or media across the network. Here are some common network devices:

## Routers
Routers are network devices that forward data packets between computer networks. They operate at the network layer of the OSI model and make decisions based on routing tables to determine the best path for data to reach its destination.

## Switches
Switches are network devices that operate at the data link layer of the OSI model. They connect devices within a local area network (LAN) and forward data packets only to the intended recipient based on the recipient's MAC address.

## Hubs
Hubs are network devices that operate at the physical layer of the OSI model. They connect multiple devices in a network and broadcast data to all connected devices, regardless of the intended recipient.

## Bridges
Bridges are network devices that connect multiple network segments or LANs. They operate at the data link layer and use MAC addresses to filter and forward data packets between different network segments.

# Network Topology

Network topology refers to the layout arrangement of different devices in a network. It defines how devices are interconnected and the paths along which data flows. Various network topologies exist, each with its own advantages and disadvantages. Common examples include:

## Bus Topology
In a bus topology, all devices are connected to a single communication line, called a bus. Data transmitted by any device is received by all other devices on the bus. It's a simple and inexpensive topology but can suffer from performance degradation and network collisions.

## Star Topology
In a star topology, all devices are connected to a central hub or switch. Data is transmitted through the central hub, which manages communication between devices. Star topologies offer better performance and scalability than bus topologies.

## Mesh Topology
In a mesh topology, every device is connected to every other device in the network, forming a fully interconnected mesh. Mesh topologies provide redundancy and fault tolerance but can be complex and expensive to implement.

## Ring Topology
In a ring topology, devices are connected in a closed loop, with each device connected to two neighboring devices. Data circulates around the ring in one direction. Ring topologies are relatively simple but can suffer from network disruptions if a single device or connection fails.

## Daisy Chain Topology
A daisy chain topology is similar to a bus topology but with the addition of branches. Devices are connected in a linear manner, with each device connected to the next in a chain. Daisy chain topologies are easy to implement but can be susceptible to network disruptions if a single device fails.

Each network topology has its own characteristics, and the choice of topology depends on factors such as the size of the network, the desired level of redundancy, and the budget available for implementation.

# OSI Model

The OSI model, which stands for Open Systems Interconnection, is a reference model that specifies standards for communication protocols and defines the functionalities of each layer. Developed by the International Organization for Standardization (ISO), the OSI model is a 7-layer architecture. Each layer of the OSI model performs different functions and adheres to specific protocols. The 7 layers are as follows:

1. **Physical Layer**: The physical layer deals with the physical connection between devices and transmission of raw data bits over a communication channel. It defines characteristics such as voltage levels, cable types, and data rates.

2. **Data Link Layer**: The data link layer provides error detection and correction within a single network segment. It ensures reliable data transfer between adjacent network nodes and manages access to the physical medium.

3. **Network Layer**: The network layer is responsible for routing packets across multiple networks. It determines the optimal path for data transmission, addressing, and logical network topology.

4. **Transport Layer**: The transport layer facilitates end-to-end communication between hosts. It ensures data reliability, flow control, and error recovery. Common transport layer protocols include TCP (Transmission Control Protocol) and UDP (User Datagram Protocol).

5. **Session Layer**: The session layer establishes, maintains, and terminates communication sessions between devices. It manages the synchronization, dialogue control, and session checkpointing.

6. **Presentation Layer**: The presentation layer translates data from the application layer into a format suitable for transmission over the network. It handles data encryption, compression, and protocol conversion.

7. **Application Layer**: The application layer provides network services directly to end-users or applications. It includes protocols for specific network services such as HTTP (Hypertext Transfer Protocol), FTP (File Transfer Protocol), and SMTP (Simple Mail Transfer Protocol).

Each layer of the OSI model plays a crucial role in ensuring effective communication between networked devices, with clear boundaries and responsibilities delineated between layers.

# Commonly Used Protocols

1. **TCP (Transmission Control Protocol)**: TCP is a reliable, connection-oriented protocol operating at the transport layer of the OSI model. It ensures data integrity, flow control, and error recovery during transmission.

2. **IP (Internet Protocol)**: IP is a network layer protocol responsible for addressing and routing packets across networks. It provides logical addressing (IP addresses) to devices and determines the best path for data transmission.

3. **UDP (User Datagram Protocol)**: UDP is a connectionless, unreliable protocol operating at the transport layer. It provides minimal error checking and does not guarantee delivery or sequencing of data. 

4. **ARP (Address Resolution Protocol)**: ARP is a network layer protocol used to map IP addresses to MAC (Media Access Control) addresses in local networks. It resolves IP addresses to hardware addresses, allowing devices to communicate within the same network segment.

5. **DHCP (Dynamic Host Configuration Protocol)**: DHCP is a network management protocol used to dynamically assign IP addresses and configuration parameters to devices on a network. It automates the process of IP address allocation.

6. **FTP (File Transfer Protocol)**: FTP is an application layer protocol used for transferring files between a client and a server on a network. It provides commands for uploading, downloading, renaming, and deleting files.

7. **HTTP (Hypertext Transfer Protocol)**: HTTP is an application layer protocol used for transmitting hypermedia documents, such as HTML files, over the World Wide Web. It defines how web browsers and servers communicate.

8. **HTTPS (Hypertext Transfer Protocol Secure)**: HTTPS is an extension of HTTP with added security features, such as encryption and authentication, to ensure secure communication over the internet.

9. **SMTP (Simple Mail Transfer Protocol)**: SMTP is an application layer protocol used for sending and receiving email messages. It defines how email clients and servers communicate to transfer messages.

10. **POP3 (Post Office Protocol version 3)**: POP3 is an application layer protocol used by email clients to retrieve email messages from a mail server. It allows users to download emails to their local device for offline access.

11. **IMAP (Internet Message Access Protocol)**: IMAP is an application layer protocol used for accessing and managing email messages stored on a mail server. It provides more advanced features than POP3, such as folder synchronization and message flagging.

12. **DNS (Domain Name System)**: DNS is a network protocol used to translate domain names (e.g., www.example.com) into IP addresses. It enables users to access websites using human-readable names instead of numerical IP addresses.

13. **SNMP (Simple Network Management Protocol)**: SNMP is an application layer protocol used for managing and monitoring network devices, such as routers, switches, and servers. It allows network administrators to collect data and control network devices remotely.

14. **SSH (Secure Shell)**: SSH is a network protocol used for secure remote access to network devices and servers. It provides encrypted communication between clients and servers, ensuring confidentiality and integrity of data transmission.

15. **TELNET (Telecommunication Network)**: TELNET is a network protocol used for remote access to network devices and servers. It provides command-line interface access to devices over a network connection.

16. **ICMP (Internet Control Message Protocol)**: ICMP is a network layer protocol used for sending error and control messages between network devices. It is commonly used for diagnostic and troubleshooting purposes in network communication.

These are just a few examples of commonly used protocols in computer networking, each serving specific purposes and operating at different layers of the OSI model.

# Unique Identifiers of a Network

In computer networking, various unique identifiers are used to distinguish devices and facilitate communication across the network. Here are some common identifiers:

## Hostname
Each device in the network is associated with a unique device name known as a Hostname. To view the hostname of your machine, type `hostname` in the command prompt (Administrator Mode) and press Enter.

## IP Address (Internet Protocol address)
The IP Address, also known as the Logical Address, is the network address of a system across the network. It is assigned by the Internet Assigned Numbers Authority (IANA) and serves as a unique identifier for each device on the Internet. To view the IP address of your device, type `ipconfig` in the command prompt and press Enter.

## MAC Address (Media Access Control address)
The MAC Address, also known as the physical address, is the unique identifier of each host and is associated with its Network Interface Card (NIC). It is assigned to the NIC at the time of manufacturing. To view the MAC address of your device, type `ipconfig /all` in the command prompt and press Enter.

## Port
A port is a logical channel through which data can be sent or received to an application. Each host may have multiple applications running, and each of these applications is identified using a port number. 

Port numbers are categorized into 

- well-known ports (0 - 1023)
- registered ports (1024 - 49151)
- ephemeral ports (49152 - 65535). 

- Number of ports 65,536 
- Range 0 – 65535 

To list all the ports being used, type `netstat -a` in the command prompt and press Enter.

## Socket
A socket is the unique combination of an IP address and a port number. It represents an endpoint for communication between two hosts. Sockets enable devices to establish connections and exchange data over a network.

These unique identifiers play essential roles in networking, facilitating communication and data exchange between devices on a network.

[Back](../networking.md) | [Protocols and Ports](../protocols_ports/protocols_ports.md) | [Tool](../tools/tools.md) 
