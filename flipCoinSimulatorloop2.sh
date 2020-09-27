#!/bin/bash

#Flipping a Coin
#to Display Heads or
#Tails

#getting user input
read -p "Head or Tail (Enter 1.For Heads 2.For Tails) : " userInput;

#checking user value
#and toss value
tossresult=$(($RANDOM%2+1));


#As a simulator, loop through Multiple times of flipping a coin
#and show number of times head and tail has won

for i in {1..10}
do
        function generateRandomValue() {
        case $1 in
                1) generateRandomValue=1;;
                *) generateRandomValue=2;;
        esac
        echo $generateRandomValue;
}
        generatedRandomValue=$( generateRandomValue $((RANDOM%2+1)) );
        if [ $generatedRandomValue == 1 ]
        then
                timesHeadsAppeared=$((timesHeadsAppeared+1));
        else
                timesTailsAppeared=$((timesTailsAppeared+1));
        fi
done


#flip coin to continue till either of them have won 21 times. 
#Show if it’s a Win or Tie. If Win then who won and by how much

#constant
MAXIMUM_POINT=21;
headsGenerated=0;
tailsGenearted=0;

while [[ $headsGenerated -lt MAXIMUM_POINT 
	&& $tailsGenerated -lt MAXIMUM_POINT ]]
do
	result=$((RANDOM%2+1));
	if [ $result == 1 ]
	then
		headsGenerated=$(($headsGenerated + 1));
	else
		tailsGenerated=$(($tailsGenerated + 1));
	fi
done

echo $headsGenerated "times head generated";
echo $tailsGenerated "times tail generated";

