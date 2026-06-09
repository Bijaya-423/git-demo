### Task 1: Basics
1. Shebang (`#!/bin/bash`) — what it does and why it matters
#!/bin/bash -> this is indicate which shell is used 


2. Running a script — `chmod +x`, `./script.sh`, `bash script.sh`
chmod +x is used to assgin the execute permission to all the user group and other member 
./script.sh is execute the script with permission if permission not assign not execute
bash script.sh is used to execute with out permission

3. Comments — single line (`#`) and inline
 this is used to comment the single line

<<comment
this is 
multi line

comment

4. Variables — declaring, using, and quoting (`$VAR`, `"$VAR"`, `'$VAR'`)
$VAR - this is Replace variable with value
"$VAR"	- this Replace with value and keep spaces
'$VAR'- this print exactly $VAR




5. Reading user input — `read`
 - it is used to the user input in run time

6. Command-line arguments — `$0`, `$1`, `$#`, `$@`, `$?`
$0 - is the script file name
$1 - is the first args
$# - is the total number of argument how many args passed
#@ - is the print the total number of args
$? - Exit Status of Previous Command



### Task 2: Operators and Conditionals
Document with examples:
1. String comparisons — `=`, `!=`, `-z`, `-n`
= -> equal to , check the two string equal or not
!= -> not equal to , check two string are different
-z -> empty string
-n -> string length is not zero

2. Integer comparisons — `-eq`, `-ne`, `-lt`, `-gt`, `-le`, `-ge`
-eq -> this is equal to
-ne -> not equal to
-lt -> this is less than
-gt -> this is greater than
-le -> this is less than equal to
-ge -> this is greater than equal to


3. File test operators — `-f`, `-d`, `-e`, `-r`, `-w`, `-x`, `-s`
-f -> regular files
-d -> regular directory
-e -> file or directory exists
-r -> readable
-w -> writable
-x -> executable
-s -> file exists and size


4. `if`, `elif`, `else` syntax

if - check first condition
elif - check second condition if first conditon is false
else - check last condition if all condioon is false


5. Logical operators — `&&`, `||`, `!`

&& -> logical and operator second command run only if the first command success both conadition true

|| -> local or operator second command run only in first command fails
    one condition true 

! -> Not operator - reverse condition 

6. Case statements — `case ... esac`

-> case is used when you have multiple choices / options
instead of writing many if elif else conditions, you can use case

this is like a switch statement in java , python



### Task 3: Loops
Document with examples:
1. `for` loop — list-based and C-style
-> for loop is used when you want to execute the same block of code multiple times
- > repeat this task for each item.

2. `while` loop
-> while loop runs as long as the condition is true.

3. `until` loop
-> until is the  opposite  of while.

4. Loop control — `break`, `continue`
-> break is used to break (exit) the statement(loop) is condition is trun 
-> continue is used to skip true condition and run next condition

5. Looping over files — `for file in *.log`
-> in this loop print all the file with .log extension one by one which 
6. Looping over command output — `while read line`

while read line is one of the most important patterns is  shell scripting.
it is used when you want to read command output line by line.

---



### Task 4: Functions
Document with examples:
1. Defining a function — `function_name() { ... }`
-> function in shell scripting are used to group a set of commands so they can bee reused multiple times.

instead of wrting the same code again and again , put it inside the function and call it whenever needed.

2. Calling a function
-> after defining a function , you execute it by writing its name.

-> function is called by function name only
function call is execute after the function defination

3. Passing arguments to functions — `$1`, `$2` inside functions
-> in shell scripting there are two different types of arguments
    i - script arguments
        - script argument passed when the script is execute time after the script file right side is $1 and send args is $2

    ii - function arguments
        - function argument is passed when function called statement

4. Return values — `return` vs `echo`

    - > returns an exit status (0- 255) from a function.
    - > echo - prints /output text

5. Local variables — `local`
    -> local keyword is used to define variable  local
    -> in shell scripting local is used inside a function to create a variable that exists only within that function.
    -> without local variable  , a variable can affect the entire script.


---

### Task 5: Text Processing Commands
Document the most useful flags/patterns for each:
1. `grep` — search patterns, `-i`, `-r`, `-c`, `-n`, `-v`, `-E`
    - grep -i - ignore case search without caring uppercase and lowercase
    - grep -r - search inside all files and sub directories.
    - frep -c - count match 
        = grep -c "error" app.log
            error count and print the output in integer 
    - grep -n - show the line number
    - grep -v - invert match - show the lines that do not match.
    
2. `awk` — print columns, field separator, patterns, `BEGIN/END`
3. `sed` — substitution, delete lines, in-place edit
4. `cut` — extract columns by delimiter
5. `sort` — alphabetical, numerical, reverse, unique
6. `uniq` — deduplicate, count
7. `tr` — translate/delete characters
8. `wc` — line/word/char count
9. `head` / `tail` — first/last N lines, follow mode

---

### Task 6: Useful Patterns and One-Liners
Include at least 5 real-world one-liners you find useful. Examples:
- Find and delete files older than N days
- Count lines in all `.log` files
- Replace a string across multiple files
- Check if a service is running
- Monitor disk usage with alerts
- Parse CSV or JSON from command line
- Tail a log and filter for errors in real time

---

### Task 7: Error Handling and Debugging
Document with examples:
1. Exit codes — `$?`, `exit 0`, `exit 1`
2. `set -e` — exit on error
3. `set -u` — treat unset variables as error
4. `set -o pipefail` — catch errors in pipes
5. `set -x` — debug mode (trace execution)
6. Trap — `trap 'cleanup' EXIT`

---

### Task 8: Bonus — Quick Reference Table
Create a summary table like this at the top of your cheat sheet:

| Topic | Key Syntax | Example |
|-------|-----------|---------|
| Variable | `VAR="value"` | `NAME="DevOps"` |
| Argument | `$1`, `$2` | `./script.sh arg1` |
| If | `if [ condition ]; then` | `if [ -f file ]; then` |
| For loop | `for i in list; do` | `for i in 1 2 3; do` |
| Function | `name() { ... }` | `greet() { echo "Hi"; }` |
| Grep | `grep pattern file` | `grep -i "error" log.txt` |
| Awk | `awk '{print $1}' file` | `awk -F: '{print $1}' /etc/passwd` |
| Sed | `sed 's/old/new/g' file` | `sed -i 's/foo/bar/g' config.txt` |

---












