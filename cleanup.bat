@echo off
echo Clearing all Windows caches...
del /s /q /f %temp%\*
del /s /q /f C:\Windows\Temp\*
del /s /q /f C:\Windows\Prefetch\*
ipconfig /flushdns
net stop wuauserv
net stop bits
del /s /q /f C:\Windows\SoftwareDistribution\*
net start wuauserv
net start bits
taskkill /f /im explorer.exe
del /f /s /q %APPDATA%\Microsoft\Windows\Recent\*
start explorer.exe
cleanmgr /sagerun:1
echo off | clip
arp -d *
wsreset
echo Cache clearing completed!
pause
