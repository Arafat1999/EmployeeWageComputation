##!/bin/bash

WagePerHour=20
HourCond=100
Month=20
day=0
hour=0

while(( day<=Month && hour<=HourCond ))
do
	randomCheck=$((RANDOM%3))
	((day++))
	case $randomCheck in
		1)
			workingHour=8
			;;
		2)
			workingHour=4
			;;
		*)
			workingHour=0
			;;
	esac
	hour=$(( hour+workingHour ))
done
salary=$(($WagePerHour*$hour))
echo "Total Salary Is:" $salary
