### Task 1: Install and Configure Git
1. Verify Git is installed on your machine
- git --version

2. Set up your Git identity — name and email
git config --global user.name "Bijaya-423"
git config --global user.email "bijayakumarjena1507@gmail.com"

3. Verify your configuration
git config --global user.name
git config --global user.email

### Task 2: Create Your Git Project
1. Create a new folder called `devops-git-practice`
2. Initialize it as a Git repository
git init

3. Check the status — read and understand what Git is telling you
git status
untracked file 
git add file_name to stage the file
git commit -m "comment" to stage to tracked file

4. Explore the hidden `.git/` directory — look at what's inside
it contains
HEAD 
config
description
hooks 
info
objects
refs


### Task 3: Create Your Git Commands Reference
1. Create a file called `git-commands.md` inside the repo
2. Add the Git commands you've used so far, organized by category:
   - **Setup & Config**
   - **Basic Workflow**
   - **Viewing Changes**
3. For each command, write:
   - What it does (1 line)
   - An example of how to use it


git --version
git config --global user.email "bijayakumarjena1507@gmail.com"
git config --global user.name "Bijaya-423"

git init
git add file_name
git commit -m "message"


git clone git_repo_url - to download the remote repo to local

git status 0 check the untracked staged and tracked

git diff --staged - shows changes that have been staged for commit 
git log - display commit history


git log --oneline - display a compact one line commit history

### Task 4: Stage and Commit
1. Stage your file
2. Check what's staged
3. Commit with a meaningful message
4. View your commit history


git add git-command.md

git status
Changes to be committed:
  new file:   git-commands.md
  
git commit -m "Add git commands cheat sheet"
[master abc1234] Add Git commands cheat sheet
 1 file changed, 100 insertions(+)
 create mode 100644 git-commands.md

git log 
commit abc123456789
Author: Your Name bijayakumarjena1507@gmail.com

    Add Git commands cheat sheet



git add moves thr changes from the working directory to dtaging

git commit save the stage chnage to permananetly

