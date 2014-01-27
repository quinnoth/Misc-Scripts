@echo off
goto :START

This is a logon script for my personal computers

:START
:: -------------------------
:: Set Environment Variables
:: -------------------------
setx path %PATH%;C:\Python32
:: -------------
:: Set Hostnames
:: -------------
SET NEWLINE=^& echo.
FIND /C /I "QNSRV01" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^10.1.1.10 QNSRV01>>%WINDIR%\system32\drivers\etc\hosts
FIND /C /I "QNPC01" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^10.1.1.2 QNPC01>>%WINDIR%\system32\drivers\etc\hosts
FIND /C /I "COG16" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^10.1.1.2 COG16>>%WINDIR%\system32\drivers\etc\hosts
FIND /C /I "QNPC02" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^10.1.1.9 QNPC02>>%WINDIR%\system32\drivers\etc\hosts
:: ----------------------
:: Connect Network Drives
:: ----------------------
NET USE M: /DELETE /Y
NET USE M: \\QNSRV01\Movies /PERSISTENT:No
NET USE N: /DELETE /Y
NET USE N: \\QNSRV01\Backups /PERSISTENT:No
NET USE O: /DELETE /Y
NET USE O: \\QNSRV01\Torrents /PERSISTENT:No
NET USE P: /DELETE /Y
NET USE P: \\QNSRV01\Videos /PERSISTENT:No
NET USE Q: /DELETE /Y
NET USE Q: \\QNSRV01\Software /PERSISTENT:No
NET USE R: /DELETE /Y
NET USE R: \\QNSRV01\Music /PERSISTENT:No
NET USE S: /DELETE /Y
NET USE S: \\QNSRV01\Photos /PERSISTENT:No
NET USE T: /DELETE /Y
NET USE T: "\\QNSRV01\TV Shows" /PERSISTENT:No

