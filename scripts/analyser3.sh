#!/bin/bash
adults=0
minors=0

for file in $(ls $1)
do
  for info in $(cat $1$file)
  do
    age=$(echo $info | cut -d ":" -f2)
    if [ $age -ge 18 ]
    then
        adults=$((adults + 1))
    else
        minors=$((minors + 1))
    fi
  done
done

echo "Совершеннолетних: " $adults
echo "Несовершеннолетних: " $minors