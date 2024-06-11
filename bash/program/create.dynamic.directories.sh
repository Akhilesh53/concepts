#!/bin/bash

# create a directory
directoryPath="/Users/b0272559_1/Documents/concepts/bash/program"

#if threee arguments are not given
if [ $# -ne 3 ]
then
    echo "Usage: $0 <directory> <startnum> <endnum>"
    exit 1
fi

directoryName=$1
startNum=$2
endNum=$3

# create a directory
for((i = $startNum; i <= $endNum; i++)); do 
    mkdir -p $directoryPath/$directoryName$i
done

echo "Directories created successfully"