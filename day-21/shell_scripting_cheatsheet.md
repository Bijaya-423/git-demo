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
6. Case statements — `case ... esac`












