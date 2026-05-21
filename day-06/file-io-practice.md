cat - to view the file data
tee - this command is used to create the file and show the file data in create time
ls -l | tee file.txt - is is show the how many file and dir present and store it into file.txt

df -h | tee disk.log - show the disk status and store in the disk.log file

tee -a file.txt - because tee is overwrite so -a means append the data do not remove the beforre saved data 

ls -l > file.txt - it is  as tee but tee show which data store in the file but > this command not show(> this is overwrite)

ls -l >> file.txt - is is also as tee but do not show it can append the data do not remove the before saved data

touch file_name - it can create the empty file
echo - it is use to print the data

cat - is used to view the saved data


vim - is the text editor
i , a , I, A - is used to insert mode
esc - to command mode
:wq - to save and quit 
:q! - without save quit
 
mkdir - to create the dir
mkdir dir1 dir2 dir3 - to create multiple directory
mkdir -p A/B/C - to create the path of the directory
mkdir dir{1..10} - to create the number of directory

touch file1 file2 file3 - to create the 3 file 
touch file{1..10} to create the multiple number of file
touch file - to create the single file

df -h - disk space of the file
free - to memory usage
top - to cpu
