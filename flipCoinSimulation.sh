#!/bin/bash -x
echo "flip coin simulation"
flips=1
heads=0
tails=0
while [ $flips -le 100 ]
do
	random=$((RANDOM%3))
	if [ $random -eq 1 ]
	then
		echo "heads is winner"
		heads=$(($heads+1))
		flips=$(($flips+1))
	elif [ $random -eq 2 ]
	then
		echo "tails is winner"
		tails=$(($tails+1))
		flips=$(($flips+1))
	fi
done
echo "head won $heads times and tails won $tails times"
echo "total no.of flips are $flips"
