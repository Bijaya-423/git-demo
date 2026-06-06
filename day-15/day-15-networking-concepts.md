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



2. Difference between **public** and **private** IPs — give one example of each
3. What are the private IP ranges?
   - `10.x.x.x`, `172.16.x.x – 172.31.x.x`, `192.168.x.x`
4. Run: `ip addr show` — identify which of your IPs are private
