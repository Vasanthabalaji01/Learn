# MAC Address

A MAC (Media Access Control) address is a unique identifier assigned to the network interface controller (NIC) of a device connected to a network. MAC addresses are used at the data link layer of the OSI model and serve as a hardware address that uniquely identifies a device on a network segment.

Key characteristics of MAC addresses include:

1. **Uniqueness**: Each MAC address is globally unique and is assigned by the manufacturer of the network interface card (NIC) during production. This ensures that no two devices on a network have the same MAC address.

2. **Fixed Format**: MAC addresses are typically represented as a series of hexadecimal digits, such as `00:1A:2B:3C:4D:5E`, separated by colons or hyphens. The format consists of six pairs of hexadecimal digits, with each pair representing one octet (8 bits) of the address.

3. **Organizationally Unique Identifier (OUI)**: The first three octets of a MAC address represent the OUI, which identifies the manufacturer of the network interface card. The remaining three octets are assigned by the manufacturer and uniquely identify the device.

MAC addresses are used primarily for local network communication and are not routable across the internet. They are used by network protocols such as Ethernet to determine the source and destination of data packets within a local area network (LAN).

To find the MAC address of your device, you can typically use commands like `ipconfig /all` on Windows or `ifconfig` on Unix-like systems in the command line interface. Additionally, many devices have the MAC address printed on a label attached to the device itself.

[Back](../basic_concepts.md) | [Networking](../../networking.md)