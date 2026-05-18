grep - to search text
ls > app.txt - to overwrite the output
ls >> app.txt to extend to output 

ls wrongfolder 2> app.log overwrite the error message 
ls wrongfolder 2>> app.log extend the error message

ls wrongfolder &> app.log overwrite the error and success message 
ls wrongfolder &>> app.log extend the error and success message 

< input redirection
| pass output from one command to another

tail -f demo.txt - show last message of the file
df -h - to show to dick usage
top - memory usage
