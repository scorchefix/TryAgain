reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google /va /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies /va /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization /va /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE /va /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Policies\Microsoft\FVE /v RDVDenyWriteAccess /t REG_DWORD /d 00000000 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile /v EnableFirewall /t REG_DWORD /d 00000001 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile /v DefaultInboundAction /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 00000000 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome /v RestoreOnStartup /t REG_DWORD /d 00000001 /f
NetSh Advfirewall set allprofiles state on
powershell -command "& {Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force}"
powershell -Command "Invoke-WebRequest "https://raw.github.com/scorchefix/TryAgain/master/clearcache.ps1" -OutFile "%USERPROFILE%\Desktop\cache.ps1""
cd %USERPROFILE%\Desktop
powershell -file "cache.ps1"