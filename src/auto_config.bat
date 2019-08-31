@echo off
title "Auto Config by T. Bunratta. | 2019"
echo ==========
echo "Auto Config by T. Bunratta. | 2019"
echo ==========

set /p LETTER="Your USB Backup Drive letter (without a colon): "
%LETTER%:
cd %LETTER%:\FileMaster\SID
wmic bios get serialnumber

set /p NUM="STIN Number of this machine : "
set CURR_USER=STIN-%NUM%
echo %CURR_USER%
echo "Adding user... %CURR_USER%"
net user %CURR_USER% %CURR_PASS% /add
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_SZ /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d %CURR_USER% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d %CURR_PASS% /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer" /v DisableMSI /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Installer" /v AlwaysInstallElevated /t REG_DWORD /d 0 /f
