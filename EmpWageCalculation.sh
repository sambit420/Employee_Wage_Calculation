#variables

isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ];
then
	empRatePerHr=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHr))
	echo "salary=$salary"
else
	salary=0
	echo "salary=$salary"
fi