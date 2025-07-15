@echo off
setlocal enabledelayedexpansion
set "temp1=%TEMP%\vid_time1.txt"
set "temp2=%TEMP%\vid_time2.txt"
if "%~1"=="" (
    pause
    exit /b
)
if not exist "%temp1%" (
    powershell -Command "(Get-Item -LiteralPath '%~1').LastWriteTime.ToString('yyyy-MM-dd HH:mm:ss')" > "%temp1%"
    set /p time1=<"%temp1%"
    echo New !time1!
    pause
    exit /b
)
if exist "%temp1%" if not exist "%temp2%" (
    powershell -Command "(Get-Item -LiteralPath '%~1').LastWriteTime.ToString('yyyy-MM-dd HH:mm:ss')" > "%temp2%"
    set /p time2=<"%temp2%"
    echo Old !time2!
    pause
    exit /b
)
echo Rand
powershell -Command ^
    "$start = [datetime]::ParseExact((Get-Content '%temp1%'), 'yyyy-MM-dd HH:mm:ss', $null);" ^
    "$end = [datetime]::ParseExact((Get-Content '%temp2%'), 'yyyy-MM-dd HH:mm:ss', $null);" ^
    "if ($start -gt $end) { $tmp = $start; $start = $end; $end = $tmp };" ^
    "$span = $end - $start;" ^
    "$maxSeconds = $span.TotalSeconds;" ^
    "$randomSeconds = Get-Random -Minimum 0 -Maximum $maxSeconds;" ^
    "$randomTime = $start.AddSeconds($randomSeconds);" ^
    "(Get-Item -LiteralPath '%~1').CreationTime = $randomTime;" ^
    "(Get-Item -LiteralPath '%~1').LastWriteTime = $randomTime;" ^
    "Write-Host 'Set' $randomTime;"
del "%temp1%" "%temp2%"
echo Done
pause