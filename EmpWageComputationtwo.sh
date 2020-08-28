#!/bin/bash -x

isPresent=1
wagePerHour=20

randomCheck=$((RANDOM%2))
if (( randomCheck == isPresent ))
then
	echo Employee is Present.
	dailyWage=$(( wagePerHour*8 ))
	echo "Employee Daily Wage Is:" $dailyWage
else
	echo Employee is Absent.
fi
