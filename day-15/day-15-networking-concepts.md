Understand how **DNS** resolves names to IPs
============================================

- > The Domain Name System (DNS) is the internet phonebook, translating human - readable web addresses (google.com) into machine readable ip addresses (192.0.1.1) 

- This allows your device to securely and acurately to seb servers across the globe.

when you type a domain into your browser , the resolution process goes through four main stages in a fraction of a second.

First local cache check
-----------------------
Before going to the internet , your device searches for the ip locally to save time

your browser checks if it recently visited the site.
the operating system checks its own recoreds.
The request then goes to your local dns server(typically your isp) which checks its recent cache




- Learn **IP addressing** (IPv4, public vs private)
===================================================
An ip address is a unique identifier for devices on a network . public ip addresses are globally unique and routable on the internet . private ip addresses are isolated to your local area network (lan) and are used for secure internal communication.



- Break down **CIDR notation** and **subnetting** basics
========================================================
cidr (classless inter-domain routing) is a compact . modern method used to write ip addresses and their associated subnet masks. instead of writing a cubbersome b=subnet mask like 255.255.255.0 , cidr uses a forward xlash(/) followed by a number . this number indicates how many bit are used for the network 


subnettig is the process of splitting one large, overarching network into smaller , more effiecient, and manageable subnets (subnets).


an ipv4 address cinsits of 32 bits , devided into four sections (octects) of 8 bits each. in cidr nonation (199.123.1.0/24), the number after the slash (/24) tells yoyu that the first 24 bits belongs to the network, leaving the remaining 8 bits (32-24 = 8) for indivisual devices

how subnetting works
====================

every network needs a way to separete the network id from the host id. when you subnet. you borrow bit from the host portion and add then to the network portion.



- Know common **ports** and why they matter
===========================================
network ports are virtual endpoints that direct data traffic to the correct  application on a device . Numbered 0 to 65535 , they act like specifix mailing addresses or radio channels. without ports a computer cannot distinguish between a web request a web request , a file transfer or an incoming email.

they allow computer network to run multiple servide simulataneously . when data packets arrive port umbers ensure the information goes to the right place

### Task 1: DNS – How Names Become IPs
1. Explain in 3–4 lines: what happens when you type `google.com` in a browser?

- The browser checks its cache for the url , then uses a dns look up tpoo find the website correcsponding ip addresss. it establishes a secure conection using a tcp/ip and ssl/tls handshake . finally , it sends a http request to the server , receives the sites files and renders the page on your screen.

a deep dive into the domain name system (dns)

how tcp/ip handshake work to establish secure connections


the dom and cssom rending process fot page display




2. What are these record types? Write one line each:
   - `A`, `AAAA`, `CNAME`, `MX`, `NS`

- here is a one line explanation for each of these common domain name system (dns)

A:  maps a humamm -readable domain name directly to an ipv4 address so the internet knows where to locate your website


AAAA: Maps a domain name to an ipv6 address , actimg as the modern counterpart to standard A records

CNAME: Points a domain or dubdomain alias to another "canonical" domain name instead of a direct ip address

MX: Specifies the mail servers responsible for receibving and routing incoming emails for your domain


NS: identifies which authoritative jname servers hold the actual dns records for a specifies domain.



3. Run: `dig google.com` — identify the A record and TTL from the output

Because DNS results vary based on your location and exact you server runig dig google.com typing returns multiple ipv4 addresses (A records) and their Time to live (TTL)


TTL: Located between the domain name and IN, representing the time (in seconds) the record is cached. In this example, it is 234 seconds (about 4 minutes)


### Task 2: IP Addressing
1. What is an IPv4 address? How is it structured? (e.g., `192.168.1.10`)

- An ipv4 address (internet protocol version 4) is a unique , 32 bit numeric identifier assigned to every device connected to a computer network.
it serve two main functions : identifying the specific device and locating it on the network so that data packets can be sent and received

- An ipv4 address is devided into 4 disticnt 8 bit segment clled octects
separated by periods


octets: each octect consist of 8 bits meaning its decimal value can rnge from 0 to 255


the two part : every ipv4 address is devided into two primary logical components


network id : identifies the specific netwrok the device belongs to 
host id : identifes the specific device within that network 

2. Difference between **public** and **private** IPs — give one example of each

- A public ip is your device primary address on the public internet , assigned by your isp (internet service provider) for external communication . a private ip is a secure , local address assigned by your router to identify specific devices within yourn home or office network

   PUBLIC IP                     PRIVATE IP
=========================================================================
- golbally visible and        - hidden from the outside internet: only accessbile across               visible within your local network
 the internet

- your network service        - your local network router
provider (airtel)

- must be globally unique     - Only needs to be unique within your 
across the entire internet       specific local netwrok

- Connecting your entire      - Connecting devices to each others and
local network to website         your router
and online services     



3. What are the private IP ranges?
   - `10.x.x.x`, `172.16.x.x – 172.31.x.x`, `192.168.x.x`

- private Ip addresses are reserved for internal networks and cannot be routes on the public internet. The official private ip range defined by the internet Engineering task force
in RFC 1918 are

class A range
=============
ip range : 10.0.0.0 to 10.255.255.255
subnet mask : 255.0.0.0 
total addresses : 16,777,216

commo usage - large enterprises networks and data centers

class b range 
=============
ip range : 172.16.0.0 to 172.31.255.255
subnet mask : 255.240.0.0
total addresses : 10,48,576
common use - medium sized corporate newtwork univeristies and cloud vpc

class c range
==============
ip range : 192.168.0.0 to 192.168.255.255
subneet mask : 255.255.0.0 
total addresses : 65,536
common use : home wifi  router and small office network 



4. Run: `ip addr show` — identify which of your IPs are private
===============================================================
when you run ip addr show in a linus terminal , your private local betwork ip addressed are listed next to the keyboard inet . yoiu can easily identify them by looking for specific reserved ip ranges used for local area networks 

Any ip address that falls within these standard ranges is a private ip




### Task 3: CIDR & Subnetting
1. What does `/24` mean in `192.168.1.0/24`?

- in 192.168.1.0/24 knows as cidr notation indicates that the first that the first 24 bits of the 32 bit ip address define the network portion . This dictate that all devioces in this network share the ssame 192.168.1 prefix , while the remaining 8 bits are  reserved for indivisual devices


subnet mast : equivalent to 255.255.255.0

ip range : cotains 256 unique addresses spanning s from 192.168.1.0 to  192.168.1.255

unables hosts : holds 254 usable ip addresses for devices 

2. How many usable hosts in a `/24`? A `/16`? A `/28`?

- A /24 prefix size provides 254 usable hosts , a 
- a /16 provides 65,534 usable hosts and 
- a /28 provides 14 usable hosts



to find the number of usable hosts in any ipv4 cidr block , use the formula
Usable hosts = 2 ^ 32 -n -2
32 represents the total bits in an ipv4 address
n is the prefix length the cidr number

we subtract 2 because the first addresses is reserved for the network id and the last address is reserved for the broacast id

3. Explain in your own words: why do we subnet?

- subnetting is the process of deviding a large , unmanageable network into smaller , independent sub networks . we do this to improve network performance by limiting traffic, enhance security bt isolating sensitve devices abd conserve ip address to prevebt waste


4. Quick exercise — fill in:

| CIDR | Subnet Mask | Total IPs | Usable Hosts |
|------|-------------|-----------|--------------|
| /24  | ?           | ?         | ?            |
| /16  | ?           | ?         | ?            |
| /28  | ?           | ?         | ?            |

| CIDR | Subnet Mask    | Total IPs | Usable Hosts |
|------|-------------   |-----------|--------------|
| /24  | 255.255.255.0  | 256       |  254         |
| /16  | 255.255.255.0  | 65536     | 65534        |
| /28  | 255.255.255.0  | 16        | 14           |


we subnet to breal large networks into smaller more managele able sections . this process improve traffic flow by containing routine data within local areas , enhances security by isolating sensitive systems and helpls  optimize ip address allocation to prevent waste



### Task 4: Ports – The Doors to Services
1. What is a port? Why do we need them?
- in computing , a port is a virtual , software - based endpoint where connections start and end , while an ip address gets data to the correct device, a port number direct that data to the specific application or service requesting it



2. Document these common ports:

| Port | Service |
|------|---------|
| 22   |  ssh    |
| 80   | http    |
| 443  | https   |
| 53   |  dns    |
| 3306 | mysql   |
| 6379 | redis   |
| 27017| mongodb |


3. Run `ss -tulpn` — match at least 2 listening ports to their services

22 - ssh - secure remote login and server administration
80 - http - serves web pages over the internet
443 - https - secure web traffice using ssl/tls
