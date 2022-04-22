Remove-Variable * -ErrorAction SilentlyContinue
$run = $true
while($run){
    $input = Read-Host "Please enter a number"
    if ($input.ToUpper() -eq "EXIT"){
        $run = $false
    }
    else{
        try{
            $number = [int]$input
            if ($number -lt 10){
                Write-Output "you entered $number, $number is less than 10"
            }
            else{
                Write-Output "you entered $number, $number is greater than or equals 10"

            }
        }
        catch{
            Write-Output "you did not enter a valid number, try again"
        }
    }
}