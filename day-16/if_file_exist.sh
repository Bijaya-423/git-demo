#!/bin/bash

read -p "Enter the file path: " filepath

if [ -d $filepath ]; then
        echo "File Exists"
else
        echo "File Does not exists "
fi
