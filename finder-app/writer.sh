#!/bin/bash
writefile=$1
writestr=$2
path=
if [ -z $writefile ] || [ -z $writestr ]
then
    echo "Arguments are not specified."
    exit 1
fi

path=`dirname $writefile`
#echo "Path: $path"

if [ ! -d $path ] 
then
    mkdir -p $path
fi

if [ ! -e $writefile ]
then
    #echo "There is no file ${writefile}"
    touch ${writefile}
#else
    #echo "${writefile} is exists"
fi    

echo "${writestr}" > ${writefile}
