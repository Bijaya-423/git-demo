#!/bin/bash

read -p "Enter number: " number

if [[ $(( number % 2 )) -eq 0 ]];
then
        echo "$number is a positive number."
else
        echo "$number is a negtive number."
fi