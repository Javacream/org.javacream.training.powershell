$input = Read-Host -Prompt "Enter a number"
#if($input is parseable as number) -> optionales ToDo
try{
    $number = [int]$input
}
catch{
    Write-Output "input not parseable"
    Write-Output $_
}