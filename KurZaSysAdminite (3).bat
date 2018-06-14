$echo off
reg delete HKLM\Software\Policies\Google\Chrome /v HomepageLocation /f
reg delete HKLM\Software\Policies\Google\Chrome\RestoreOnStartupURLs /v 1 /f
reg delete HKLM\Software\Policies\Microsoft\Windows\Personalization /v LockScreenImage /f
reg delete HKLM\Software\Policies\Microsoft\Windows\Personalization /v NoChangingLockScreen /f
reg add HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\ /v EnableFirewall /t REG_DWORD /d 1 /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies /v NoChangingWallPaper /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Policies\Microsoft\FVE /v RDVDenyWriteAccess /t REG_SZ /d 0 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableBkGndGroupPolicy  /t REG_SZ /d 1 /f 