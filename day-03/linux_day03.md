ls -l - list with details
ls -a - list all with hidden file
ls -lt - list all detail with latest time 
ls -la - list with hidden file and details

mkdir - create directory
touch - create file
cat - view  file data
echo -  print in terminal
echo "text" > file_name - store in file and remove the existing data
echo "text" >> file_name - keep existing data and add new data

* - wildcard character 
use in
rm *.txt - delete all txt file
ls *.txt - show all the txt file

? - wildcard character
use in

file?.txt - show all the file in like file1.txt, file2.txt, file3.txt

head -n 3 file_name - file first 3 line of the file data
tail -n 2 file_name - file last 3 line data

grep - to search the text in the file
grep "ERROR" in file_name
find -name "*/log" - show all the log file

wc- word count
wc -l file_name - print only how many line ot the text in this file

wc file_name - show detail word and line reord in the file


chmod 700 file_name - change the pemrision of the file
4- read
2- write
1- execute

700 - 7 is user, 0 is group, 0 is other

chmod +x file_name - assign all member to execute permission
chmod -w file_name - remove the permision

suod - suuperuser do - this command work without /root administrater priviliges work the permission





