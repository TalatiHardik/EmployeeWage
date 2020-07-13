
#!/bin/bash -x

echo "Welcome to UC2 calculate salary"
ispresent=1
randomcheck=$(( RANDOM%2 ))

if [ $ispresent -eq $randomcheck ]
then
	emphrs=8
	empRatePerHr=20
	salary=$(( emphrs*empRatePerHr ))
else
	salary=0
fi

echo $salary "is salary of employee "
