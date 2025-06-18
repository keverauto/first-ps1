$name = "Justin" #string
$age = 17 #int
$height = 1.95 #float
$hobby = "gaming" #string
$hobby2 = "programming" #string
$game = Read-Host "welke game speel je het liefst?" #string
Write-Host "je naam is $name en je leeftijd is $age je bent $height. je hobby's zijn $hobby en $hobby2 $game" #string

if ($age -lt 18) {
    Write-Host "Je bent nog geen volwassene."
} elseif ($age -ge 18 -and $age -lt 65) {
    Write-Host "Je bent een volwassene."
} else {
    Write-Host "Je bent een senior."
}