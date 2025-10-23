@echo off
setlocal enabledelayedexpansion

:: Create a report file
set "report=SystemInfoReport.txt"
echo System Information Report > %report%
echo ========================= >> %report%

:: Get Operating System Information
echo. >> %report%
echo Operating System Information: >> %report%
echo ----------------------------- >> %report%
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" >> %report%

:: Get Hardware Information
echo. >> %report%
echo Hardware Information: >> %report%
echo --------------------- >> %report%
echo Processor: >> %report%
wmic cpu get name >> %report%
echo. >> %report%
echo Memory: >> %report%
wmic memorychip get capacity >> %report%
echo. >> %report%
echo Disk Drives: >> %report%
wmic diskdrive get model,size >> %report%

:: Get Network Information
echo. >> %report%
echo Network Information: >> %report%
echo -------------------- >> %report%
ipconfig /all | findstr /R "Description IPv4 Address" >> %report%

:: Get User Information
echo. >> %report%
echo User Information: >> %report%
echo ----------------- >> %report%
echo Username: %username% >> %report%
echo Computer Name: %computername% >> %report%

:: Perform Basic Stress Test
echo. >> %report%
echo Performing Basic Stress Test... >> %report%
echo -------------------------------- >> %report%
echo CPU Stress Test: >> %report%
for /L %%i in (1,1,5000) do echo %%i > nul
echo Completed CPU Stress Test >> %report%
echo. >> %report%
echo Disk Write Test: >> %report%
echo This is a test file to check disk write speed. > testfile.txt
for /L %%i in (1,1,1000) do type testfile.txt >> testfile.txt
del testfile.txt
echo Completed Disk Write Test >> %report%

:: Open Applications to Simulate Workload
echo. >> %report%
echo Opening Applications to Simulate Workload... >> %report%
echo ------------------------------------------------ >> %report%
start notepad.exe
start calc.exe
start mspaint.exe

:: Record CPU and Memory Usage
echo. >> %report%
echo CPU and Memory Usage: >> %report%
echo --------------------- >> %report%
for /L %%i in (1,1,5) do (
    echo Sample %%i: >> %report%
    wmic cpu get loadpercentage /format:list >> %report%
    wmic os get freephysicalmemory /format:list >> %report%
    timeout /t 2 > nul
)

:: Close the applications
taskkill /im notepad.exe /f
taskkill /im calc.exe /f
taskkill /im mspaint.exe /f

:: Evaluate System Performance
echo. >> %report%
echo System Performance Evaluation: >> %report%
echo ------------------------------- >> %report%
for /f "tokens=2 delims==" %%i in ('wmic cpu get loadpercentage /format:list') do set load=%%i
for /f "tokens=2 delims==" %%i in ('wmic os get freephysicalmemory /format:list') do set memory=%%i

if %load% lss 50 if %memory% gtr 1000000 (
    echo This system is good for home use, small business processing, and everyday tasks. >> %report%
) else if %load% lss 80 if %memory% gtr 500000 (
    echo This system is suitable for more intensive tasks, including light programming and graphic design. >> %report%
) else (
    echo This system is high-performance and capable of handling heavy tasks, including video editing and gaming. >> %report%
    echo It's so good, it could theoretically hack NASA (but please don't try this!). >> %report%
)

:: Display the report
notepad %report%
