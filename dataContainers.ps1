#@(Liste von Elementen) ist das Array-Literal
$names = @("Hugo", "Emil", "Fritz")
$name = $names[0] #-> Hugo
$name = $names[2] #-> Fritz
$name = $names[42] #-> 'null'
$name = $names[-2] #-> Emil
#Write-Output $name

$nameRange = $names[1..2]
#Write-Output $nameRange

#iteration mit foreach

foreach($name in $names){
    Write-Output "Name: $name"
}

#@{Liste von key=value-Paare} ist das Hashtable-Literal
$nameToCity = @{"Hugo"="Berlin";"Emil"="München";"Fritz"="Stuttgart"}
$city = $nameToCity["Emil"] #-> München
$city = $nameToCity["Eduard"]#->null
#Write-Output $city
$cities= $nameToCity["Emil", "Hugo"]
#Write-Output $cities

foreach($key in $nameToCity.Keys){
    Write-Output "Key: $key"
}

foreach($value in $nameToCity.Values){
    Write-Output "Value: $vaue"
}

foreach($key in $nameToCity.Keys){
    $value = $nameToCity[$key]
    Write-Output "Key: $key, Value: $value"
}
