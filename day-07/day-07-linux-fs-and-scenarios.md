- `/` (root) - The starting point of everything
===============================================
-> Everythings in linux starts with / (forward slash) 

-> / (root) - the top of everything file on the system 

-> it contains bin   dev  home  lib64       media  opt   root  sbin  srv  tmp  var
boot  etc  lib   lost+found  mnt    proc  run   snap  sys  usr
- `/home` - User home directories
=================================

-> home- is the user home directory it contains the user 
-> you can run ssh to remote server , server live in the home directory

ubuntu@ip-172-31-37-148:~$ ls
app.sh    demo        development  hello       projects  tee-demo
code.py   deploy.log  file         output.txt  show.jar  testing
code.txt  dev.txt     file.txt     production  staging
ubuntu@ip-172-31-37-148:~$ pwd
/home/ubuntu
ubuntu@ip-172-31-37-148:~$



- `/root` - Root user's home directory
======================================
-> it is the home directory of the root user 
-> system adminstrator or superuser

-> root user has absolute power over the entire operating system
-> you can not change the directory to root/ 

ubuntu@ip-172-31-37-148:/$ pwd
/
ubuntu@ip-172-31-37-148:/$ ls
bin   dev  home  lib64       media  opt   root  sbin  srv  tmp  var
boot  etc  lib   lost+found  mnt    proc  run   snap  sys  usr
ubuntu@ip-172-31-37-148:/$ cd root/
-bash: cd: root/: Permission denied
ubuntu@ip-172-31-37-148:/$


- `/etc` - Configuration files
==============================
/etc - directory contains text based configuration file that control the behaviour of the operating system and the applications running  on it.

etc/ contains a list of all user accounts on the system their user is and their home directory path

etc/ contains user group on the system and lists which uses belong to them

it contains all the system config file password group ssh/ nginx/ docker/ hostname

you edit here to configure server

it cotains
----------
ubuntu@ip-172-31-37-148:/$ cd etc/
ubuntu@ip-172-31-37-148:/etc$ ls
ModemManager            hosts.allow             ppp
NetworkManager          hosts.deny              profile
PackageKit              init                    profile.d
X11                     init.d                  protocols
acpi                    initramfs-tools         python3
adduser.conf            inputrc                 python3.14
alternatives            iscsi                   rc0.d
apparmor                issue                   rc1.d
apparmor.d              issue.net               rc2.d
apport                  kernel                  rc3.d
apt                     landscape               rc4.d




- `/var/log` - Log files (very important for DevOps!)
=====================================================
it contains
ubuntu@ip-172-31-37-148:/var$ cd log/
ubuntu@ip-172-31-37-148:/var/log$ ls
README            btmp                   dpkg.log   private
alternatives.log  chrony                 journal    syslog
amazon            cloud-init-output.log  kern.log   sysstat
apport.log        cloud-init.log         landscape  unattended-upgrades
apt               dist-upgrade           lastlog    wtmp
auth.log          dmesg                  nginx

it contains all the log file and directory


- `/tmp` - Temporary files
==========================
ubuntu@ip-172-31-37-148:/tmp$ ls
runbook-demo
snap-private-tmp
systemd-private-5badf4dbcce9432bb33241b581d5c449-ModemManager.service-uT7Pbr
systemd-private-5badf4dbcce9432bb33241b581d5c449-chrony.service-ncPfp7
systemd-private-5badf4dbcce9432bb33241b581d5c449-irqbalance.service-9a9IHB
systemd-private-5badf4dbcce9432bb33241b581d5c449-polkit.service-baL4DY
systemd-private-5badf4dbcce9432bb33241b581d5c449-systemd-logind.service-68D37u

it contains the temporary data
never store important data here

- `/bin` - Essential command binaries
=====================================
essential binaries every user can run this command -it contains all the command

ubuntu@ip-172-31-37-148:/bin$ ls
 3cpio                                nm
 GET                                  nohup
 HEAD                                 nproc
 POST                                 nroff
 VGAuthService                        nsenter
 X11                                  nslookup
 '['                                  nstat
 aa-enabled                           nsupdate
 aa-exec                              ntfs-3g
 aa-features-abi                      ntfs-3g.probe
 acpi_listen                          ntfscat
 acpidbg                              ntfscluster
 add-apt-repository                   ntfscmp

 - `/usr/bin` - User command binaries
======================================
contains the actual applications you install and use day to day work


ubuntu@ip-172-31-37-148:/usr/bin$ ls
 3cpio                                nm
 GET                                  nohup
 HEAD                                 nproc
 POST                                 nroff
 VGAuthService                        nsenter
 X11                                  nslookup
 '['                                  nstat
 aa-enabled                           nsupdate
 aa-exec                              ntfs-3g
 aa-features-abi                      ntfs-3g.probe
 acpi_listen                          ntfscat


- `/opt` - Optional/third-party applications
============================================
it contains
ubuntu@ip-172-31-37-148:/$ cd opt/
ubuntu@ip-172-31-37-148:/opt$ ls
containerd
ubuntu@ip-172-31-37-148:/opt$ cd containerd/
ubuntu@ip-172-31-37-148:/opt/containerd$ ls
ls: cannot open directory '.': Permission denied
ubuntu@ip-172-31-37-148:/opt/containerd$

optional and third party software  install here