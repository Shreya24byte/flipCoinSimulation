#!/bin/bash -x
echo "Welcome to Flip Coin Simulator Program";

#Variables
heads=0;
tails=0;

#Multiple coin toss
for ((toss=0; toss<20; toss++));
do
	coin=$((RANDOM%2));
	if [ $coin -eq 0 ];
	then
		heads=$((heads+1));
	else
		tails=$((tails+1));
	fi
done

echo "Heads won $heads times";
echo "Tails won $tails times";
