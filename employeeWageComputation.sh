
#!/bin/bash -x

echo "Welcome to UC1 Attendance Check"
ispresent=1
randomcheck=$(( RANDOM%2 ))

if [ $ispresent -eq $randomcheck ]
then
	echo "Employee is present"
else
	echo "Employee is absent"

fi
