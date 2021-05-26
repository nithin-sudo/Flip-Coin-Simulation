#!/bin/bash -x
echo "flip coin simulation"
heads=0
tails=0
random=$((RANDOM%2))
if [ $random -eq 1 ]
then
	echo "heads is winner"
	((heads++))
else
	echo "tails is winner"
	((tails++))
fi
