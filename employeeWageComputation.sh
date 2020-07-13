
#!/bin/bash -x
echo "Welcome to UC9 - Add Dictonary and store day and total wage"
declare -A dailywage

Is_Fulltime=1
Is_Parttime=2
Max_Hrs_IN_Month=100
Emp_Rate_Per_Hr=20
Num_Working_Days=20


totalSalary=0
totalEmpHr=0
totalWorkingDays=0

function getWorkingHours(){
	case $1 in
		$Is_Fulltime)
		workHours=4 ;;
		$Is_Parttime)
		workHours=8 ;;
		*)
		workHours=0 ;;
	esac
	echo $workHours
}


function calcDailyWage(){
	local workHours=$1
	wage=$(( $workHours*$Emp_Rate_Per_Hr ))
	echo $wage


}

while [[ $totalEmpHr -lt $Max_Hrs_IN_Month && $totalWorkingDays -lt $Num_Working_Days ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	dailywage["Day_$totalWorkingDays"]="$( calcDailyWage $workHours )"
	totalEmpHr=$(($totalEmpHr+$workHours))
done
totalSalary="$( calcDailyWage $totalEmpHr )"
dailywage["totalSalary"]=$totalSalary

#echo $totalSalary "is total salary of employee "
echo
echo "Daily wage of employee is "${dailywage[@]}
echo "Daily wage of employee is "${!dailywage[@]}
echo
echo
for key in ${!dailywage[@]}
do
	if [ $key != "totalSalary" ]
	then
		echo "Daily Wage of employee for day $key is " ${dailywage[$key]}
	else
		echo
		echo "Total Wage of employee is " ${dailywage[$key]}
		echo
	fi

done
