
#!/bin/bash -x
echo "Welcome to UC6 - Add another condition of max hours"
Is_Fulltime=1
Is_Parttime=2
Max_Hrs_IN_Month=100
Emp_Rate_Per_Hr=20
Num_Working_Days=20


totalSalary=0
totalEmpHr=0
totalWorkingDays=0


while [[ $totalEmpHr -lt $Max_Hrs_IN_Month && $totalWorkingDays -lt $Num_Working_Days ]]
do
	((totalWorkingDays++))
	empcheck=$(( RANDOM%3 ))
	case $empcheck in
		$Is_Fulltime)
		emphrs=4 ;;
		$Is_Parttime)
		emphrs=8 ;;
		*)
		emphrs=0 ;;
	esac
	totalEmpHr=$(($totalEmpHr+$emphrs))
done
totalSalary=$(($totalEmpHr*$Emp_Rate_Per_Hr))

echo $totalSalary "is salary of employee "
