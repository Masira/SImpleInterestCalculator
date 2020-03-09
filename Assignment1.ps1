#Script: Loan_Simple_Interest

# The script can be used to calculate the simple interest on the basis of different 
# inputs provided by the user.   SI = PRT/100

# Assumption. Bank allows loan of any amount in-between 1000 and 100000

#User Inputs
[ValidateRange(1000,100000)]$principle = [int32] (Read-host "Principle amount you are looking for? 1000-100000")
[ValidateRange(2,5)]$time = [int32] (Read-host "Tenure?  2-5 years")

#Fixed rate of interest
$rate_of_interest =  10


#Calucluation part 

$simple_interest = ( $principle * $rate_of_interest * $time ) / 100

Write-Host "Principle : $principle  Time: $time  rate_of_interest: $rate_of_interest" -BackgroundColor Cyan -ForegroundColor red
Write-Host "Dear Customer. You will be required to pay an interest of $simple_interest"  -BackgroundColor Cyan -ForegroundColor red


Write-Host "Thank You" -BackgroundColor DarkGreen -ForegroundColor Cyan