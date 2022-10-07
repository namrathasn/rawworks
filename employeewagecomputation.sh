echo "Welcome to Employee Wage Computation Program"

function attendance()
{
	Random=$((RANDOM%2))
	if [ $Random -eq 1 ]
	 then
	echo "Employee is present";
	 else
		echo "Employee is absent";
	fi
}

attendance




IS_PART_TIME=
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=;
NUM_WORKING_DAYS=20;

totalWorkHours=0;
totalWorkingDays=0;


IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

declare -A dailywage

function getWorkHrs() {
        case $1 in
                $IS_FULL_TIME)
                        empHrs=8
                        ;;
                $IS_PART_TIME)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
}
function getEmpWage() {
        echo $(($1*$EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        getWorkHrs $empCheck
        totalEmpHrs=$(($totalEmpHrs + $empHrs))
        dailyWage["$totalWorkingDays"]=$(($empHrs*$EMP_RATE_PER_HR))
done

totalSalary="$( getEmpWage $totalEmpHrs )"
