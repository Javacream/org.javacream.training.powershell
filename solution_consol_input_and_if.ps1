﻿$input = Read-Host "Please enter a number"
$number = [int]$input
if ($number -lt 10){
    Write-Host "you entered $number, $number is less than 10"
}
else{
    Write-Host "you entered $number, $number is greater than or equals 10"

}