@echo off
set /p warning="are you sure abaout that setting change (Y/N)"
if %warning% == "N" goto n
if %warning% == "Y" goto y
if %warning% == "n" goto n
if %warning% == "y" goto y

:n
echo ok closing
pause

:y
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
pause