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
echo "By again flipping to make difference >2"
        while [ 1 ]
        do
                face=$((RANDOM%2))
                if [ $face -eq 1 ]
                then
                        ((++HEAD))
                else
                        ((++TAIL))
                fi
                dif1=$(($HEAD-$TAIL))
                dif2=$(($TAIL-$HEAD))
                if [[ $dif1 -gt 2 || $dif2 -gt 2 ]]
                then
                        break;
                fi
        done
