
#!/bin/bash -x

echo "Welcome to UC1 Attendance Check"
ispresent=1
randomcheck=$(( RANDOM%2 ))

if [ $ispresent -eq $randomcheck ]
then
	emphrs=8
	empRatePerHr=20
	salary=$(( emphrs*empRatePerHr*emphrs ))
else
	salary=0
fi

echo $salary "is salary of employee "
