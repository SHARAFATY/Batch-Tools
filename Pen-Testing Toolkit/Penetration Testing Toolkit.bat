::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBNdXwyDAE+1EbsQ5+n//NaQrV8Wa+EwdpzPyKGNNOkc5Hrrc5Ak1X9lis4cDRJKQRC+ZwMwoGBFiXOXMsmfuzD1RUeF2V8/FGl/jnfvhSg0buw6zJFQhHXw9U7w/w==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF25
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZkkaHUrSXA==
::ZQ05rAF9IBncCkqN+0xwdVsHAlbMbSXqZg==
::ZQ05rAF9IAHYFVzEqQIALRUZeAGRKGK0AfUo5+f35OOTwg==
::eg0/rx1wNQPfEVWB+kM9LVsJDDSHMm6uFLQI4ef1r96CsVkUWuV/TIDU1r+HNIA=
::fBEirQZwNQPfEVWB+kM9LVsJDDSHMm6uFLQI4ef1r96CsVkUWuV/TIDU1r+HNIA=
::cRolqwZ3JBvQF1fEqQIALRVRWBaDKGK1CPUo7fvv5uSA4nkSW+40cZub3rGdKecd71akc5k/lmlTldsACVtMfwGgfUFU
::dhA7uBVwLU+EWGiR/UE7OxJYWgGQcWe7BNU=
::YQ03rBFzNR3SWATExVc5KxBnRQiUOXna
::dhAmsQZ3MwfNWATExVc5KxBHRQiUOXn3CrQeiA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmh+kg/MVo0
::Zh4grVQjdCyDJGyX8VAjFBNdXwyDAES0A5EO4f7+086CsUYJW/IDSIrVl4CLM/Qa5EKkQZki2nFTjIUJFB44
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
batch
@echo off
color 0A
title Penetration Testing Toolkit
setlocal enabledelayedexpansion

:MainMenu
cls
echo ================================
echo    Penetration Testing Toolkit
echo ================================
echo 1. Network Utilities
echo 2. System Information
echo 3. User Management
echo 4. File Management
echo 5. Process Management
echo 6. Security Checks
echo 7. Backup and Restore
echo 8. Exit
echo ================================
set /p choice="Select an option: "

if "%choice%"=="1" goto NetworkUtilities
if "%choice%"=="2" goto SystemInformation
if "%choice%"=="3" goto UserManagement
if "%choice%"=="4" goto FileManagement
if "%choice%"=="5" goto ProcessManagement
if "%choice%"=="6" goto SecurityChecks
if "%choice%"=="7" goto BackupRestore
if "%choice%"=="8" exit
echo Invalid choice! Please try again.
pause
goto MainMenu

:NetworkUtilities
cls
echo ================================
echo       Network Utilities
echo ================================
echo 1. Ping a Host
echo 2. IP Configuration
echo 3. Traceroute
echo 4. DNS Lookup
echo 5. List Active Connections
echo 6. Display ARP Table
echo 7. Network Statistics
echo 8. Check Firewall Status
echo 9. Back to Main Menu
echo ================================
set /p nchoice="Select an option: "

if "%nchoice%"=="1" (
    set /p host="Enter the hostname or IP address to ping: "
    ping "!host!"
) else if "%nchoice%"=="2" (
    ipconfig
) else if "%nchoice%"=="3" (
    set /p target="Enter the target IP address: "
    tracert "!target!"
) else if "%nchoice%"=="4" (
    nslookup
) else if "%nchoice%"=="5" (
    netstat -an
) else if "%nchoice%"=="6" (
    arp -a
) else if "%nchoice%"=="7" (
    netstat -s
) else if "%nchoice%"=="8" (
    netsh advfirewall show allprofiles
) else if "%nchoice%"=="9" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto NetworkUtilities

:SystemInformation
cls
echo ================================
echo     System Information
echo ================================
echo 1. Display System Info
echo 2. List Installed Software
echo 3. Display CPU Info
echo 4. Display Memory Info
echo 5. Display Disk Info
echo 6. Check Windows Version
echo 7. Show User Accounts
echo 8. Back to Main Menu
echo ================================
set /p infochoice="Select an option: "

if "%infochoice%"=="1" (
    systeminfo
) else if "%infochoice%"=="2" (
    wmic product get name,version
) else if "%infochoice%"=="3" (
    wmic cpu get name,CurrentClockSpeed
) else if "%infochoice%"=="4" (
    wmic memorychip get capacity,speed
) else if "%infochoice%"=="5" (
    wmic diskdrive get model,size
) else if "%infochoice%"=="6" (
    ver
) else if "%infochoice%"=="7" (
    net user
) else if "%infochoice%"=="8" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto SystemInformation

:UserManagement
cls
echo ================================
echo      User Management
echo ================================
echo 1. Create a User
echo 2. Delete a User
echo 3. Change User Password
echo 4. Enable User Account
echo 5. Disable User Account
echo 6. List User Accounts
echo 7. Add User to Group
echo 8. Remove User from Group
echo 9. Back to Main Menu
echo ================================
set /p umchoice="Select an option: "

if "%umchoice%"=="1" (
    set /p username="Enter the username to create: "
    net user "!username!" /add
    echo User "!username!" created successfully.
) else if "%umchoice%"=="2" (
    set /p username="Enter the username to delete: "
    net user "!username!" /delete
    echo User "!username!" deleted successfully.
) else if "%umchoice%"=="3" (
    set /p username="Enter the username to change password: "
    net user "!username!" *
) else if "%umchoice%"=="4" (
    set /p username="Enter the username to enable: "
    net user "!username!" /active:yes
    echo User "!username!" enabled.
) else if "%umchoice%"=="5" (
    set /p username="Enter the username to disable: "
    net user "!username!" /active:no
    echo User "!username!" disabled.
) else if "%umchoice%"=="6" (
    net user
) else if "%umchoice%"=="7" (
    set /p username="Enter the username to add: "
    set /p groupname="Enter the group name: "
    net localgroup "!groupname!" "!username!" /add
    echo User "!username!" added to group "!groupname!".
) else if "%umchoice%"=="8" (
    set /p username="Enter the username to remove: "
    set /p groupname="Enter the group name: "
    net localgroup "!groupname!" "!username!" /delete
    echo User "!username!" removed from group "!groupname!".
) else if "%umchoice%"=="9" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto UserManagement

:FileManagement
cls
echo ================================
echo      File Management
echo ================================
echo 1. List Files in Directory
echo 2. Create a File
echo 3. Delete a File
echo 4. Rename a File
echo 5. Copy a File
echo 6. Move a File
echo 7. Search for a File
echo 8. Backup Files
echo 9. Back to Main Menu
echo ================================
set /p fmchoice="Select an option: "

if "%fmchoice%"=="1" (
    set /p dirpath="Enter the directory path: "
    dir "!dirpath!"
) else if "%fmchoice%"=="2" (
    set /p filename="Enter the name of the file to create: "
    echo. > "!filename!"
    echo File "!filename!" created successfully.
) else if "%fmchoice%"=="3" (
    set /p filename="Enter the name of the file to delete: "
    del "!filename!" 2>nul
    if errorlevel 1 (
        echo Failed to delete "!filename!". It may not exist.
    ) else (
        echo File "!filename!" deleted successfully.
    )
) else if "%fmchoice%"=="4" (
    set /p oldname="Enter the current name of the file: "
    set /p newname="Enter the new name for the file: "
    ren "!oldname!" "!newname!" 2>nul
    if errorlevel 1 (
        echo Failed to rename "!oldname!". It may not exist.
    ) else (
        echo File renamed from "!oldname!" to "!newname!" successfully.
    )
) else if "%fmchoice%"=="5" (
    set /p src="Enter the source file path: "
    set /p dest="Enter the destination path: "
    copy "!src!" "!dest!" 2>nul
    if errorlevel 1 (
        echo Failed to copy "!src!". Check if it exists.
    ) else (
        echo File copied from "!src!" to "!dest!" successfully.
    )
) else if "%fmchoice%"=="6" (
    set /p src="Enter the source file path: "
    set /p dest="Enter the destination path: "
    move "!src!" "!dest!" 2>nul
    if errorlevel 1 (
        echo Failed to move "!src!". Check if it exists.
    ) else (
        echo File moved from "!src!" to "!dest!" successfully.
    )
) else if "%fmchoice%"=="7" (
    set /p search="Enter the name of the file to search for: "
    dir /s /b *"!search!"*
) else if "%fmchoice%"=="8" (
    set /p src="Enter the source directory to backup: "
    set /p dest="Enter the destination directory: "
    xcopy "!src!" "!dest!" /s /i /y
    echo Backup completed from "!src!" to "!dest!".
) else if "%fmchoice%"=="9" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto FileManagement

:ProcessManagement
cls
echo ================================
echo     Process Management
echo ================================
echo 1. List Running Processes
echo 2. Kill a Process
echo 3. Display Process Details
echo 4. Check System Resources
echo 5. Back to Main Menu
echo ================================
set /p pmchoice="Select an option: "

if "%pmchoice%"=="1" (
    tasklist
) else if "%pmchoice%"=="2" (
    set /p pid="Enter the PID of the process to kill: "
    taskkill /PID "!pid!" /F
    echo Process with PID "!pid!" terminated.
) else if "%pmchoice%"=="3" (
    set /p pid="Enter the PID to display details: "
    wmic process where processid="!pid!" get name,processid,commandline
) else if "%pmchoice%"=="4" (
    echo Checking system resources...
    systeminfo | findstr /C:"Total Physical Memory" /C:"Available Physical Memory"
) else if "%pmchoice%"=="5" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto ProcessManagement

:SecurityChecks
cls
echo ================================
echo      Security Checks
echo ================================
echo 1. Check User Account Control (UAC) Status
echo 2. Check Windows Update Status
echo 3. Check Antivirus Status
echo 4. Check for Open Ports
echo 5. Check Firewall Status
echo 6. Back to Main Menu
echo ================================
set /p scchoice="Select an option: "

if "%scchoice%"=="1" (
    reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA"
) else if "%scchoice%"=="2" (
    echo Checking Windows Update status...
    powershell -command "Get-WindowsUpdate"
) else if "%scchoice%"=="3" (
    echo Checking antivirus status...
    wmic /namespace:\\root\SecurityCenter2 path AntiVirusProduct get displayName, productState
) else if "%scchoice%"=="4" (
    netstat -an | find "LISTEN"
) else if "%scchoice%"=="5" (
    netsh advfirewall show allprofiles
) else if "%scchoice%"=="6" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto SecurityChecks

:BackupRestore
cls
echo ================================
echo    Backup and Restore
echo ================================
echo 1. Backup Important Files
echo 2. Restore from Backup
echo 3. List Backup Files
echo 4. Delete Backup Files
echo 5. Back to Main Menu
echo ================================
set /p brchoice="Select an option: "

if "%brchoice%"=="1" (
    set /p src="Enter the source directory to backup: "
    set /p dest="Enter the destination directory: "
    xcopy "!src!" "!dest!" /s /i /y
    echo Backup completed from "!src!" to "!dest!".
) else if "%brchoice%"=="2" (
    set /p src="Enter the backup directory: "
    set /p dest="Enter the restore destination directory: "
    xcopy "!src!" "!dest!" /s /i /y
    echo Restore completed from "!src!" to "!dest!".
) else if "%brchoice%"=="3" (
    dir "C:\Backup\" 2>nul
) else if "%brchoice%"=="4" (
    set /p backupfile="Enter the name of the backup file to delete: "
    del "!backupfile!" 2>nul
    if errorlevel 1 (
        echo Failed to delete "!backupfile!". It may not exist.
    ) else (
        echo Backup file "!backupfile!" deleted successfully.
    )
) else if "%brchoice%"=="5" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto BackupRestore