#!/bin/bash -x
echo "Welcome to Flip Coin Simulator Program";

#Coin toss
toss=$((RANDOM%2));

if [ $toss -eq 0 ];
then
	echo "Heads is the winner!";
else
	echo "Tails is the winner!";
fi
