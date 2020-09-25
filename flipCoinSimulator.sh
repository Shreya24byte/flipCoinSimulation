#!/bin/bash -x
echo "Welcome to Flip Coin Simulator Program";

#Variables
heads=0;
tails=0;

#Coin toss till heads or tails win 21 times
while [[ $heads -lt 21 && $tails -lt 21 ]];
do
	coin=$((RANDOM%2));
	if [ $coin -eq 0 ];
	then
		heads=$((heads+1));
	else
		tails=$((tails+1));
	fi
done

#Check the winner
if [ $heads -eq 21 ];
then
	echo "Heads won $heads times";
elif [ $tails -eq 21 ];
then
	echo "Tails won $tails times";
else
	echo "It's a tie!";
fi
