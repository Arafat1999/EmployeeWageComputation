#!/bin/bash

WagePerHour=20
HourCond=100
Month=20
day=0
hour=0

function workHour()
{
	case $1 in
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
		echo $workingHour
}

while(( day<Month && hour<HourCond ))
do
	randomCheck=$((RANDOM%3))
	((day++))
	emphour=$(workHour $randomCheck)
	hour=$(($hour+$emphour))
done

salary=$(($WagePerHour*$hour))
echo "Total Salary Is:" $salary
