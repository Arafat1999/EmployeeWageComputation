#!/bin/bash

isPresent=1
wagePerHour=20
fullTime=1
randomCheck=$((RANDOM%2))
randomCheckTwo=$((RANDOM%2))

if (( randomCheck == isPresent ))
then
	if (( randomCheckTwo == fullTime ))
	then
		echo "Employee is Present."
		dailyWage=$(( wagePerHour*8 ))
		echo "Employee Daily Wage Is:" $dailyWage
	else
		echo "Employee is Present."
		partTimeWage=$(( wagePerHour*4 ))
		echo "Employee Works Part Time & his Daily Wage is:" $partTimeWage
	fi
else
	echo "Employee is Absent."
fi
