#!/bin/bash

set -e
IFS=',' read -r -a value_array <<< "$2"

VALUES=''
for value in "${value_array[@]}"
do
    VALUES="${VALUES} -f ${value} "
    echo $value
done
helm lint $1
helm template $1 $VALUES