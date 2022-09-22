#variables
totalEmpHr=0
totalWorkingDays=0

#Constants
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHrs=20
numWorkingDays=20

function getWorkingHours()
{

	case $1 in

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

while [[ $totalEmpHr -lt $maxHrsInMonth && 
         $totalWorkingDays -lt $numWorkingDays ]]
do

      ((totalWorkingDays++))
      empHrs="$( getWorkingHours $((RANDOM%3)) )"
      totalWorkHrs=$(($totalempHr+$empHrs))

done
echo "$totalWorkHrs"