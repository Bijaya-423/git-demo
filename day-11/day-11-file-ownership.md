### Task 1: Understanding Ownership (10 minutes)

ls -l -> is the long list to check the user group permission date file or folder name

identify the in left is the owner and right side of the owner is the group
and check the who is the owner of the file


-rw-r--r-- 1 owner group size date filename -> in this format owner is the who created the file and group is a collection of the user if owner assign this file or dir to group and in this group member have permission to read write and execute this file

### Task 2: Basic chown Operations (20 minutes)



create a file devops-notes.txt and check the permission in ls -l devops-notes.txt 

create a new user tokyo using sudo useradd -m tokyo and then set the password using sudo passwd tokyo 

and sudo chown tokyo devops-notes.txt


then create another user in sudo adduser berlin and password that time created and assing to the the new user to this file 

sudo chown berlin devops-notes.txt

### Task 3: Basic chgrp Operations (15 minutes)
================================================

create a file team-notes.txt
then create a group add heist-team and assing this group to team-notes.txt 

sudo chgrp heist-team team-notes.txt

### Task 4: Combined Owner & Group Change (15 minutes)

Using `chown` you can change both owner and group together:

Create file `project-config.yaml`
and change the owner of the file using sudo chown user:group filename

then Create directory `app-logs/` and assign the user and group sudo chown username file and then chgrp groupname file

command : sudo chown owner:group filename



### Task 5: Recursive Ownership (20 minutes)
Create directory three directory and one file

   mkdir -p heist-project/vault
   mkdir -p heist-project/plans
   touch heist-project/vault/gold.txt
   touch heist-project/plans/strategy.conf


Create group `planners`: `sudo groupadd planners`

ad change the with out -R recursivly then check directoy is change but sub dir not change then add -R to change the total directory path group change and owner change
Change ownership of entire `heist-project/` directory:
   - Owner: `professor`
   - Group: `planners`
   - Use recursive flag (`-R`)

 Verify all files and subdirectories changed: `ls -lR heist-project/`

### Task 6: Practice Challenge (20 minutes)

Create users: `tokyo`, `berlin`, `nairobi` two users existed and add new user nairobi 
then two  Create groups: `vault-team`, `tech-team`
then Create directory: `bank-heist/`
under this directory Create 3 files inside:

   touch bank-heist/access-codes.txt
   touch bank-heist/blueprints.pdf
   touch bank-heist/escape-plan.txt
   

Set different ownership:
   - `access-codes.txt` → owner: `tokyo`, group: `vault-team`
   - `blueprints.pdf` → owner: `berlin`, group: `tech-team`
   - `escape-plan.txt` → owner: `nairobi`, group: `vault-team`

 `ls -l bank-heist/`


