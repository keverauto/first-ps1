Clear-Host
$url = "https://api.sunnus.nl/customers"
$data = Invoke-WebRequest -Uri $url
$customers = $data.Content | ConvertFrom-Json
foreach($customer in $customers){
    write-host $customer.id - $customer.company_name
}
$customerid = read-host "welke klant wil je selecteren?"


try {
$url = "https://api.sunnus.nl/customers/$customerid/servers"
$data = Invoke-WebRequest -Uri $url
$servers = $data.content | ConvertFrom-Json
}
catch {
    Write-Host "klant bestaat niet"
    [System.Console]::Beep(1000, 500)
    exit
}
Write-host $data
foreach($server in $servers.servers){
    write-host $server.id  $server.name
}
$serverid = read-host "welke server wil je selecteren?"

$url = "https://api.sunnus.nl/servers/$serverid"
$data = Invoke-WebRequest -Uri $url
$server = $data.content | ConvertFrom-Json
$server = $data