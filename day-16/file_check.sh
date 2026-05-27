#!/bin/bash

read -p "Enter file path" filepath

if [[ -f $filepath ]];
then
        echo "$filepath exists."
else
        echo "$filepath not exists."
fi