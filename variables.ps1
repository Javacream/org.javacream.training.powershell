# Demo für Variablen

# Variablen beginnen mit $ und einem anschließenden frei wählbaren Namen
# Zuweisung mit =
# Rechte Seite der Zuweisung: Literal
$lastname = "Sawitzki"
$firstname = "Rainer"

$name = "$firstname $lastname"
Write-Output $name

$number1 = 20
$number2 = 22
$result = $number1 + $number2
Write-Output $result
Write-Output $number1 + $number2
Write-Output "$number1 + $number2"
Write-Output ($number1 + $number2)
Write-Output "($number1 + $number2)"
Write-Output "$($number1 + $number2)"

#Unterstützte mathematische Operationen: +, -, *, /


$result2 = $number1 + $number2 + $name
Write-Output $result2
