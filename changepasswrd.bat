@echo off
net user
set /p user=Enter username:
set /p psswd=Enter new password:
net user %user% %psswd%