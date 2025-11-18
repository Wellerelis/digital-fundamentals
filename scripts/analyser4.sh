#!/bin/bash
youngest_age=100
oldest_age=0
youngest_info=""
oldest_info=""

for file in $(ls $1)
do
  for info in $(cat $1$file)
  do
    age=$(echo $info | cut -d ":" -f2)
    
    if [ $age -lt $youngest_age ]
    then
        youngest_age=$age
        youngest_info=$info
    fi
    
    if [ $age -gt $oldest_age ]
    then
        oldest_age=$age
        oldest_info=$info
    fi
  done
done

echo "Самый молодой: " $youngest_info
echo "Самый старый: " $oldest_info