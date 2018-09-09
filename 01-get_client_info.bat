@echo off

call .\_get_date4filename.bat

mkdir %default_dir%
cd %default_dir%

ipconfig /all > IPconfig_%filename%.txt
cmdkey /list > CmdKey_%filename%.txt
systeminfo /fo csv > Systeminfo_%filename%.csv
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v AutoConfigURL > AutoConfigUrl_%filename%.txt
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer > ProxyServer_%filename%.txt
pause