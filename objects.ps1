$names = @("Hugo", "Emil", "Fritz")
# Wieviel Elemente hat die Liste?
$counter = 0
foreach($name in $names){
    $counter = $counter + 1
}
#Write-Output $counter

$size = $names.Length
#Write-Output $size

$name = "Hugo"
$name = $name.ToUpper()
Write-Output $name $name.Length $name.Substring(1,2) $name.StartsWith("H") $name.StartsWith("J")


