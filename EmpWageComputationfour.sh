#!/bin/bash


wagePerHour=20 
fullTime=1
randomCheck=$((1+RANDOM%2))

case $randomCheck in
	1)
		echo "Employee is Present."
		dailyWage=$(( wagePerHour*8 ))
		echo "Employee Daily Wage Is:" $dailyWage
		;;
	2)
		echo "Employee is Present."
		partTimeWage=$(( wagePerHour*4 ))
		echo "Employee Works Part Time & Daily Wage Is:" $partTimeWage
		;;
esac
