#!/bin/bash


fruits=("apple" "banana" "orange" "mango" "litchi")


for fruit in ${fruits[@]}
do
        echo "$fruit"
done



for num in {1..10}
do
        echo $num
done



#!/bin/bash


if [ $# -eq 0 ];
then
        echo "./greet.sh <name>"
else
        echo "Hello , $1"
fi



#!/bin/bash

num=0
read -p "Enter number: " number
while [ $num -le $number ]
do
        echo " number -" $num
        ((num++))
done



#!/bin/bash

set -e

# Create directory
mkdir /tmp/devops-test || echo "Directory already exists"

# Move into directory
cd /tmp/devops-test || {
    echo "Failed to enter directory"
    exit 1
}

# Create file
touch devops.txt || {
    echo "Failed to create file"
    exit 1
}

echo "File created successfully."


#!/bin/bash

# List of packages
packages=("nginx" "curl" "wget")

# Loop through packages
for package in "${packages[@]}"
do

    echo "Checking package: $package"

    # Check package installed or not
    if dpkg -s "$package" &>/dev/null
    then
        echo "$package is already installed."
    
    else
        echo "$package is NOT installed."
        echo "Installing $package..."

        sudo apt update -y
        sudo apt install -y "$package"

        # Verify installation
        if dpkg -s "$package" &>/dev/null
        then
            echo "$package installed successfully."
        else
            echo "Failed to install $package."
        fi
    fi

    echo "--------------------------------"

done