#variables

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
numWokingDays=20

for(( day=1; day<=numWokingDays; day++ ))
do
	empCheck=$((RANDOM%3));

case $empCheck in

	$isPartTime)
		empHrs=8
		;;
	$isFullTime)
		empHrs=4
		;;
	*)
		empHrs=0
		;;
esac

salary=$(($empHrs*$empRatePerHr));
echo "salary=$salary"
totalSalary=$(($totalSalary+$salary))

done

echo "Employee has earned rs $totalSalary in a month"
