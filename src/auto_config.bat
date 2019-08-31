@echo off
title "Auto Config by T. Bunratta. | 2019"
echo ==========
echo "Auto Config by T. Bunratta. | 2019"
echo ==========

set /p LETTER="Your USB Backup Drive letter (without a colon): "
%LETTER%:
cd %LETTER%:\FileMaster\SID
