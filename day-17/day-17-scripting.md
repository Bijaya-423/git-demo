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