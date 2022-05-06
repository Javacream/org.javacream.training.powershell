$dotnetObject = New-Object System.Collections.Generic.HashSet[string]
$dotnetObject.Add("Hugo")
$dotnetObject.Add("Fritz")
$dotnetObject.Add("Hugo")
$dotnetObject.Add("Emil")
foreach($name in $dotnetObject){
    Write-Output $name
}

