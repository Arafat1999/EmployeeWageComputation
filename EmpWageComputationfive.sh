#!/bin/bash

wagePerHour=20
workingDay=20

randomCheck=$((1+RANDOM%2))

case $randomCheck in
	1)
		echo "Employee Works Full Time & Daily Wage Is:"
		workingHour=8
		;;
	2)
		echo "Employee Works Part Time & Daily wage Is:"
		workingHour=4
		;;
esac

salary=$(( workingDay*wagePerHour*$workingHour ))
echo $salary
