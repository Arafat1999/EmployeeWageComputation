#!/bin/bash

WagePerHour=20
HourCond=100
Month=20
day=1
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
function dailyWage() {
	local timeHour=$1
	dailyIncome=$(($timeHour*$WagePerHour))
	echo $dailyIncome
}
while(( day<=Month && hour<HourCond ))
do
	randomCheck=$((RANDOM%3))
	emphour=$(workHour $randomCheck)
	hour=$(($hour+$emphour))
	wageArray[day]=$(dailyWage $emphour)
	((day++))
done

salary=$(($WagePerHour*$hour))
	echo "Total Salary Is:" $salary
	echo "Daily income Is:" ${wageArray[@]}
	echo "Days Is:" ${!wageArray[@]}
