#!/bin/bash/ -x
function celsiusToFahrenheit(){
   degreeToFahernheit=$(( ($celsiustemp*9/5)+32))
	echo $degreeToFahernheit
}
function faherenheitToCelsius(){
	degreeToCelsius=$(( (($Fahernheittemp-32)*5)/9 ))
	echo $degreeToCelsius
}

echo "1.convert celsius temperature to fahernheit "
echo "2.convert fahernheit  temperature to celsius  "
echo "choose a option "
read conversion
case $conversion in 
1 ) 
	read -p " enter temperature between 0 to 100" celsiustemp
	if [ $celsiustemp -ge  0 -a $celsiustemp -le 100 ]
	then 
		celsiusToFahrenheit $celsiustemp
	else
		echo " enter between the range "
	fi
	;;
2 ) 
	read -p " enter temperature between 32 to 212" Fahernheittemp
	if [ $Fahernheittemp -ge 32 -a $Fahernheittemp -le 212 ]
	then 
		 faherenheitToCelsius $Fahernheittemp
	else
		echo " enter between the range"
	fi
	;;

*)
esac
