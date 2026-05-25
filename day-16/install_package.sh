#!/bin/bash

<<comment
This shell script will take any package as an argument and it will install that package

comment

sudo apt-get update
sudo apt-get upgrade

echo "after installing delete first $2"
sudo apt-get purge $2
echo "Then install $1"

echo "Installing $1"

sudo apt-get install -y $1

echo "Successfully installed $1"

sudo systemctl status $2


echo "kitne admin the $#"