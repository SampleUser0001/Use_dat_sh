#!/bin/bash

filename=./build.dat

while read data; do
    first=`echo ${data} | cut -d , -f 1`
    second=`echo ${data} | cut -d , -f 2`

    echo $first
    echo $second
    echo "---"
done << END
`cat ${filename}`
END
