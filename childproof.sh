#!/bin/bash

# Childproofing your bash script

# Usage : 

# Add this script to the same directory as your own script.
# Add this into the beginning of your script :
 
# source childproof.sh
# childproof  

function childproof()
{

clear

version=0.1
echo "======================================================"
echo " Childproof (v${version})"
echo "======================================================"
declare -A myArray
myArray=([1]=One [2]=Two [3]=Three [4]=Four [5]=Five [6]=Six [7]=Seven [8]=Eight [9]=Nine [10]=Ten)

num1=$(( ( RANDOM % 10 ) + 1 ))
num2=$(( ( RANDOM % 10 ) + 1 ))
total=$((num1 + num2))

for num in ${num1} ${num2};
do
  echo "Type in the numeric value of : \"${myArray[${num}]}\" and press Enter"
  read intVar
  if [ ${num} -eq ${intVar} ];then
      echo "Correct"
  else
      echo "Incorrect"
      return 1 
  fi
done

echo "Type in the answer to : \"${num1} + ${num2}\" and press Enter" 

read totalVar

if [ ${total} -eq ${totalVar} ];then
    echo "Correct"
else
    echo "Incorrect"
    return 1
fi

return 0
}
