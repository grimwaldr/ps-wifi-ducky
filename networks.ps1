$wifiProfiles = netsh wlan show profiles | Select-String "All User Profile" | ForEach-Object { $_.ToString().Split(':')[1].Trim() }

$wifiProfiles | ForEach-Object {
    $ssid = $_
    $profileInfo = netsh wlan show profile name="$ssid" key=clear
    $passwordLine = $profileInfo | Select-String "Key Content"

    if ($passwordLine) {
        $password = $passwordLine.ToString().Split(':')[1].Trim()
    } else {
        $password = "null"
    }
    Write-Output "SSID: $ssid Password: $password"
} > wirelessinfo.txt
