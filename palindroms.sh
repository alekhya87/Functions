#!/bin/bash/ -x
function checkPalindromeForFirstNumber(){
	reminder=$(( firstNumber % 10 ))
	firstsum=$(( firstsum * 10 + reminder ))
	firstNumber=$(( firstNumber / 10 ))
}
function checkPalindromeForSecondNumber(){
   reminder=$(( secondNumber % 10 ))
   secondsum=$(( secondsum * 10 + reminder ))
   secondNumber=$(( secondNumber / 10 ))
}

echo “enter the no to check palendrome”
read firstNumber
read secondNumber
reminder=0
firstsum=0
secondsum=0
firstResult=$firstNumber
secondResult=$secondNumber
while [ $firstNumber -ne 0 ]
do
	checkPalindromeForFirstNumber $firstNumber
done
while [ $secondNumber -ne 0 ]
do
   checkPalindromeForSecondNumber $secondNumber
done
echo "firstresult is  $firstResult . secondresult is $secondResult "
if [ $firstResult -eq $firstsum -a $secondResult -eq $secondsum ]
then
	echo "both value are palendrome"
elif [ $firstResult -eq $firstsum -o $secondResult -eq $secondsum ]
then
	echo "only one value is palindrome "
else
	echo "value is not palendrome"
fi
