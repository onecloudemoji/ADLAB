Expand-Archive -LiteralPath c:\users\vagrant\documents\BadBlood.zip -DestinationPath c:\users\vagrant\documents\BadBlood
New-Item -path HKLM:\Software -Name badblood -Force
Set-Item -Path HKLM:\Software\badblood -Value "1"
schtasks /create /tn "bad blood" /ru system /sc onstart /delay 0010:30 /tr "powershell.exe -file C:\users\vagrant\documents\BadBlood\Invoke-BadBlood.ps1"