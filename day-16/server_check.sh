#!/bin/bash

read -p "Enter the service you want to check: " service

read -p "Do you want to check the status? (y/n): " check

if [[ $check == "y" ]]; then
        systemctl status $service
else
        echo "You have say no."
fi