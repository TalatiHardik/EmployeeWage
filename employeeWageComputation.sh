
#!/bin/bash -x

echo "Welcome to UC4 Add case statement"
isfulltime=1
isparttime=2
empcheck=$(( RANDOM%3 ))
empRatePerHr=20

case $empcheck in
	$isparttime)
	emphrs=4 ;;
	$isfulltime)
	emphrs=8 ;;
	*)
	emphrs=0 ;;
esac
salary=$(( emphrs*empRatePerHr))

echo $salary "is salary of employee "
