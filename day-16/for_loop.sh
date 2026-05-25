#!/bin/bash
for  i in {1..100} ; do
        #echo "Hello Dosto-$i"
        mkdir -m 444 day-$i
done

read -p "enter file path" filepath
if [ -d $filepath ] ; then
       rm -rf $filepath
fi

