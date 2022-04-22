Remove-Variable * -ErrorAction SilentlyContinue
$names = @("A", "B", "C")
Write-Output $names[1] #-> "B"
$names2 = $names
Write-Output $names2[1] #-> "B"

$names[1] = "CHANGED"
Write-Output $names[1] #-> "CHANGED"
Write-Output $names2[1] #-> "CHANGED", $names und $names2 sind Referenzen auf das selbe Objekt

$namesCopy = $names.Clone()
$names[2] = "CHANGED TOO"
Write-Output $names[2] #-> "CHANGED TOO"
Write-Output $namesCopy[2] #-> "C"

