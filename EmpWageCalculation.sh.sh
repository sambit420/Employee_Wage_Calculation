#variables
totalEmpHr=0
totalWorkingDays=0

#Constants
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHrs=20
numWorkingDays=20

declare -A dailyWage

function getWorkingHours()
{

	local empCheck=$1
	case $empCheck in

		$isPartTime)
			empHrs=4
			;;
		$isFullTime)
			empHrs=8
			;;
		*)
			empHrs=0
			;;
	esac

	echo "$empHrs"

}

function getEmpWage() 
{

	local empHrs=$1
	echo $(($empHrs*$empRatePerHrs))
}

while [[ $totalEmpHr -lt $maxHrsInMonth && 
         $totalWorkingDays -lt $numWorkingDays ]]
do

      ((totalWorkingDays++))
      empCheck=$((RANDOM%3))
      empHrs="$( getWorkingHours $empCheck )"
      totalWorkHrs=$(($totalEmpHr + $empHrs))
      dailyWage["Day "$totalWorkingDays]="$( getEmpWage $empHrs )"

done

echo "$totalWorkHrs"

totalSalary=$(($totalWorkHrs*$empRatePerHrs))

echo "$totalSalary"

echo ${dailyWage[@]}

echo ${!dailyWage[@]}
Footer