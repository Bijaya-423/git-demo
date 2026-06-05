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

