
#!/bin/bash -x
echo "Welcome to UC7 - Add functions"

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


while [[ $totalEmpHr -lt $Max_Hrs_IN_Month && $totalWorkingDays -lt $Num_Working_Days ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalEmpHr=$(($totalEmpHr+$workHours))
done
totalSalary=$(($totalEmpHr*$Emp_Rate_Per_Hr))

echo $totalSalary "is salary of employee "
