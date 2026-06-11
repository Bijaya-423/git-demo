### Task 1: Understanding Branches
Answer these in your `day-23-notes.md`:
1. What is a branch in Git?
2. Why do we use branches instead of committing everything to `main`?
3. What is `HEAD` in Git?
4. What happens to your files when you switch branches?


1- A branch is an independent line of development in git 

is is a separate workspace where you can make changes without affecting the main code

2- we use branches to work on new features , bug fixes or experiments without affecting the stable code in the main branch.

if every one commit directly to main

- bugs can reach production
- Team members may overwrite each others work.
- Testing becomes difficult.
- The main branch may become unstable.


Branches provide an isolated workspace where developers can make changes safely , test them and review them before merging into main.



3- HEAD is a pointer that tells git which commit and branch you are currently working on 

HEAD is the current position in git

4- when you switch branche , git updates your working directory to match the files stored in the target branch.











