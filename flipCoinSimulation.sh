#!/bin/bash 
echo "flip coin simulation"
flips=1
heads=0
tails=0
if [ $heads -gt $(($tails+2)) ]
then
        dif=$(($heads-$tails))
        echo "Heads won by $dif times more than Tails"
elif [ $tails -gt $(($heads+2)) ]
then
        dif=$(($tails-$heads))
        echo "Tails won by $dif times more than Headss"
else
        echo "Its TIE since their difference is <=2"
fi


while [ $flips -le 100 ]
do
	random=$((RANDOM%3))
	if [ $random -eq 1 ]
	then
		#echo "heads is winner"
		heads=$(($heads+1))
		flips=$(($flips+1))
	elif [ $random -eq 2 ]
	then
		#echo "tails is winner"
		tails=$(($tails+1))
		flips=$(($flips+1))
	fi
done
echo "head won $heads times and tails won $tails times"
echo "total no.of flips are $flips"
