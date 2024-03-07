#!/bin/bash
filedir=$1
searchstr=$2
files=
n_files=
matches=

if [ -z $filedir ] || [ -z $searchstr ]
then
    echo "arguments are not specified"
    exit 1
fi

if [ -d "$filedir" ]
then
    files=$(find $filedir -type f)
    #echo "files set"
    n_files=$(find $filedir -type f | wc -l)
    #n_files=$(echo $files | wc -l)
    #echo "n_files set"

    matches=$(grep -o "$searchstr" $files | wc -l)
    #echo "$matches"
    echo "The number of files are $n_files and the number of matching lines are $matches"
    exit 0 
else
    echo "$filedir is not a file or directory."
    exit 1
fi

#Print the message "The number of files are X and the number of matching lines are Y"
#where X is the number of files in the directory and subdirectories
#Y is the number of matching lines found in respective files, where a matching line
#refers to a line which contains searchstr (and may also contain additional content)

 

