#!/bin/bash -x
echo "Welcome to Flip Coin Simulator Program";

#Variables
heads=0;
tails=0;

#Function for coin toss
function coinFlip() {
	coin=$((RANDOM%2));
        if [ $coin -eq 0 ];
        then
                heads=$((heads+1));
        else
                tails=$((tails+1));
        fi

}


#Coin toss till heads or tails win 21 times
while [[ $heads -lt 21 && $tails -lt 21 ]];
do
coinFlip;
done

#Determine the winner
if [ $heads -eq 21 ];
then
	echo "Heads won $heads times";
elif [ $tails -eq 21 ];
then
	echo "Tails won $tails times";
else
	coinFlip;
	if [ $heads ];
	then
		$heads+=2;
		echo "Heads won!";
	else
		$tails+=2;
		echo "Tails won!"
	fi
fi
