$getInput = Read-Host "Enter IP addresses"
$regex = [regex] "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b"
$regex.Matches($getInput) | %{ Test-NetConnection $_.value }

