
#!/bin/bash -x

echo "Welcome to UC5 calculate wage for month"
isfulltime=1
isparttime=2
totalSalary=0
numWorkingDays=20

empRatePerHr=20
for((day=1;day<=$numWorkingDays;day++))
do
	empcheck=$(( RANDOM%3 ))
	case $empcheck in
		$isparttime)
		emphrs=4 ;;

		$isfulltime)
		emphrs=8 ;;
		*)
		emphrs=0 ;;
	esac
	salary=$(( $emphrs*$empRatePerHr ))
	totalSalary=$(($totalSalary+$salary))
done
echo $totalSalary "is salary of employee "
