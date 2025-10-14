#!/bin/bash

LARGEST=$1

for num in "$@"
do
  if [ $num -gt "$LARGEST" ];
  then 
  echo " $LARGEST is greater" 
  fi
done