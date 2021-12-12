@echo off
:head
set /p id=Enter number(1 to encrypt file, 2 to change permission, 3 to delete file, 0 to exit): 
echo %id%
if %id%==1 (
echo Encryption
set /p patth=Enter folder or file path to encrypt:
cipher /E %patth%
goto :head
)
if %id%==2 (
echo Permission
set /p path=Enter folder or file path to change permissions:
set /p user=Enter Username:
set /p permission=Enter permissions (R-Read, W-Write, C-Change, F-Full Control:
@echo on
ICACLS "%path%" /grant %user%:%permission%
@echo off
goto :head
)
if %id%==3 (
echo Delete
set /p pathh=Enter folder or file path to delete(If it is file type with extension):
set /p flag=If it is folder type 1, If it is file type 2:
if %flag%==1 rmdir /S %pathh%
if %flag%==2 del %pathh%
goto :head
)
if %id%==0 echo Programme finished successfully.
