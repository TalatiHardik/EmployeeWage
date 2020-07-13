
#!/bin/bash -x

echo "Welcome to UC3 Add part-time"
ispresent=1
isparttime=2
randomcheck=$(( RANDOM%3 ))
emprate=20

if [ $ispresent -eq $randomcheck ]
then
	emphrs=8
elif [ $isparttime -eq $randomcheck ]
then
	emphrs=4
else
	emphrs=0
fi

salary=$(( emphrs*emprate ))

echo $salary "is salary of employee "
