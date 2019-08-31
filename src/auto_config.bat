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
