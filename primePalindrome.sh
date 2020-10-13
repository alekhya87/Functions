#!/bin/bash/ 
function checkIfNumberIsPrime(){
	if [ $((number%counter)) -eq 0 ]
   then
        count=1
   fi
   counter=$((counter+1))

}
function checkPalindromeFornumber(){
        reminder=$(( number % 10 ))
        firstsum=$(( firstsum * 10 + reminder ))
        number=$(( number / 10 ))
		  
}

echo "read a number"
read number
reminder=0
firstsum=0
firstResult=$number
count=2
counter=2

while [ $counter -le  $((number/2)) ]
do
     checkIfNumberIsPrime $number
done

while [ $number -ne 0 ]
do
	checkPalindromeFornumber $number
done

if [ $firstResult -eq $firstsum ]
then
        echo "value is palindrome"
else
        echo "value is not palendrome"
fi

if [ $count -eq 1 ]
then
        echo "value is Not Prime"
else
        echo "value is Prime"
fi
