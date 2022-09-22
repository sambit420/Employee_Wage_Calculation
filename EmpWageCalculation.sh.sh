#variables
totalEmpHr=0
totalWorkingDays=0

#Constants
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHrs=20
numWorkingDays=20

while [[ $totalEmpHr -lt $maxHrsInMonth && 
         $totalWorkingDays -lt $numWorkingDays ]]
  do

	((totalWorkingDays++))
	empCheck=$((RANDOM%3));

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

	totalEmpHrs=$(($totalEmpHr+$empHrs));

done

totalSalary=$(($totalEmpHrs*$empRatePerHrs));
echo "$totalSalary"