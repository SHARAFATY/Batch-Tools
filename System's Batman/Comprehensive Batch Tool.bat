::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBNdXwyDAE+1EbsQ5+n//NaRq18IR909eZvk2buANOEU40rqSp8u2XRlyZ5YX0wOMBuoYW8=
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
::cxY6rQJ7JhzQF1fEqQJhZksaHErRXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXpZg==
::ZQ05rAF9IAHYFVzEqQIDMQhASQnFLyuYB6ER6eab
::eg0/rx1wNQPfEVWB+kM9LVsJDDebL3+/C/IPqMr6++eGrC0=
::fBEirQZwNQPfEVWB+kM9LVsJDAuPLHmzDrAS++Ht6qqlo1ldYO0wdJy7
::cRolqwZ3JBvQF1fEqQIZPFxHDBCKOSuYB6ER6ea74OzHu0IIRqIMYY7P37nPQA==
::dhA7uBVwLU+EWGiR/UE7GxJYWgGQcWe7BNU=
::YQ03rBFzNR3SWATExVc5KxBnRQiUOXna
::dhAmsQZ3MwfNWATExVc5KxBHRQiUOXn3CrQeiA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmh+kg/MVo0
::Zh4grVQjdCyDJGyX8VAjFBNdXwyDAES0A5EO4f7+086CsUYJW/IDS5bIzrGDZ/NTyETweJcjmH9Cnas=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
batch
@echo off
title Comprehensive Batch Tool
setlocal enabledelayedexpansion

:MainMenu
cls
echo ================================
echo         Main Menu
echo ================================
echo 1. File Manipulation
echo 2. System Configuration
echo 3. Batch Processing
echo 4. Network Utilities
echo 5. System Information
echo 6. Backup and Restore
echo 7. User Management
echo 8. Exit
echo ================================
set /p choice="Select an option: "

if "%choice%"=="1" goto FileManipulation
if "%choice%"=="2" goto SystemConfiguration
if "%choice%"=="3" goto BatchProcessing
if "%choice%"=="4" goto NetworkUtilities
if "%choice%"=="5" goto SystemInformation
if "%choice%"=="6" goto BackupRestore
if "%choice%"=="7" goto UserManagement
if "%choice%"=="8" exit
echo Invalid choice! Please try again.
pause
goto MainMenu

:FileManipulation
cls
echo ================================
echo       File Manipulation
echo ================================
echo 1. Create a File
echo 2. Delete a File
echo 3. Rename a File
echo 4. Copy a File
echo 5. Move a File
echo 6. List Files in a Directory
echo 7. Search for a File
echo 8. Back to Main Menu
echo ================================
set /p fchoice="Select an option: "

if "%fchoice%"=="1" (
    set /p filename="Enter the name of the file to create: "
    echo. > "!filename!"
    echo File "!filename!" created successfully.
) else if "%fchoice%"=="2" (
    set /p filename="Enter the name of the file to delete: "
    del "!filename!" 2>nul
    if errorlevel 1 (
        echo Failed to delete "!filename!". It may not exist.
    ) else (
        echo File "!filename!" deleted successfully.
    )
) else if "%fchoice%"=="3" (
    set /p oldname="Enter the current name of the file: "
    set /p newname="Enter the new name for the file: "
    ren "!oldname!" "!newname!" 2>nul
    if errorlevel 1 (
        echo Failed to rename "!oldname!". It may not exist.
    ) else (
        echo File renamed from "!oldname!" to "!newname!" successfully.
    )
) else if "%fchoice%"=="4" (
    set /p src="Enter the source file path: "
    set /p dest="Enter the destination path: "
    copy "!src!" "!dest!" 2>nul
    if errorlevel 1 (
        echo Failed to copy "!src!". Check if it exists and the destination is correct.
    ) else (
        echo File copied from "!src!" to "!dest!" successfully.
    )
) else if "%fchoice%"=="5" (
    set /p src="Enter the source file path: "
    set /p dest="Enter the destination path: "
    move "!src!" "!dest!" 2>nul
    if errorlevel 1 (
        echo Failed to move "!src!". Check if it exists and the destination is correct.
    ) else (
        echo File moved from "!src!" to "!dest!" successfully.
    )
) else if "%fchoice%"=="6" (
    set /p dirpath="Enter the directory path to list: "
    dir "!dirpath!" /b
) else if "%fchoice%"=="7" (
    set /p search="Enter the name of the file to search for: "
    dir /s /b *"!search!"*
) else if "%fchoice%"=="8" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto FileManipulation

:SystemConfiguration
cls
echo ================================
echo      System Configuration
echo ================================
echo 1. Display System Information
echo 2. Check Disk Space
echo 3. Set Environment Variable
echo 4. Show Environment Variables
echo 5. Change Computer Name
echo 6. Restart Computer
echo 7. Shutdown Computer
echo 8. Back to Main Menu
echo ================================
set /p schoice="Select an option: "

if "%schoice%"=="1" (
    systeminfo
) else if "%schoice%"=="2" (
    echo Checking disk space...
    for /f "tokens=3" %%a in ('dir ^| find "bytes free"') do set free_space=%%a
    echo Free disk space: !free_space!
) else if "%schoice%"=="3" (
    set /p varname="Enter the name of the environment variable: "
    set /p varvalue="Enter the value of the environment variable: "
    set "!varname!=!varvalue!"
    echo Environment variable "!varname!" set to "!varvalue!".
) else if "%schoice%"=="4" (
    set
) else if "%schoice%"=="5" (
    set /p newname="Enter the new computer name: "
    wmic computersystem where name="%COMPUTERNAME%" call rename name="!newname!"
    echo Please restart your computer for the changes to take effect.
) else if "%schoice%"=="6" (
    echo Restarting the computer...
    shutdown /r /t 0
) else if "%schoice%"=="7" (
    echo Shutting down the computer...
    shutdown /s /t 0
) else if "%schoice%"=="8" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto SystemConfiguration

:BatchProcessing
cls
echo ================================
echo      Batch Processing
echo ================================
echo 1. Run a Batch File
echo 2. List Batch Files in Current Directory
echo 3. Create a New Batch File
echo 4. Edit a Batch File
echo 5. Execute Multiple Batch Files
echo 6. Schedule a Batch File
echo 7. Back to Main Menu
echo ================================
set /p bchoice="Select an option: "

if "%bchoice%"=="1" (
    set /p batchfile="Enter the name of the batch file to run: "
    if exist "!batchfile!" (
        call "!batchfile!"
    ) else (
        echo Batch file "!batchfile!" does not exist.
    )
) else if "%bchoice%"=="2" (
    echo Listing batch files in the current directory:
    dir *.bat /b
) else if "%bchoice%"=="3" (
    set /p newbatch="Enter the name of the new batch file: "
    echo @echo off > "!newbatch!"
    echo REM Add your commands below >> "!newbatch!"
    echo Batch file "!newbatch!" created successfully.
) else if "%bchoice%"=="4" (
    set /p editfile="Enter the name of the batch file to edit: "
    if exist "!editfile!" (
        notepad "!editfile!"
    ) else (
        echo Batch file "!editfile!" does not exist.
    )
) else if "%bchoice%"=="5" (
    set /p files="Enter the names of batch files to execute (separated by space): "
    for %%f in (!files!) do (
        if exist "%%f" (
            call "%%f"
        ) else (
            echo Batch file "%%f" does not exist.
        )
    )
) else if "%bchoice%"=="6" (
    set /p batchfile="Enter the name of the batch file to schedule: "
    schtasks /create /tn "Scheduled Batch" /tr "!batchfile!" /sc once /st 00:00
    echo Batch file "!batchfile!" scheduled to run at 00:00.
) else if "%bchoice%"=="7" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto BatchProcessing

:NetworkUtilities
cls
echo ================================
echo      Network Utilities
echo ================================
echo 1. Ping a Host
echo 2. Display IP Configuration
echo 3. Show Active Connections
echo 4. Traceroute to a Host
echo 5. Flush DNS Cache
echo 6. Check Network Status
echo 7. Back to Main Menu
echo ================================
set /p nchoice="Select an option: "

if "%nchoice%"=="1" (
    set /p host="Enter the host to ping: "
    ping "!host!"
) else if "%nchoice%"=="2" (
    ipconfig
) else if "%nchoice%"=="3" (
    netstat
) else if "%nchoice%"=="4" (
    set /p host="Enter the host for traceroute: "
    tracert "!host!"
) else if "%nchoice%"=="5" (
    ipconfig /flushdns
    echo DNS cache flushed successfully.
) else if "%nchoice%"=="6" (
    netsh interface show interface
) else if "%nchoice%"=="7" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto NetworkUtilities

:SystemInformation
cls
echo ================================
echo      System Information
echo ================================
echo 1. Display System Information
echo 2. Display CPU Information
echo 3. Display Memory Information
echo 4. Display Disk Information
echo 5. Display BIOS Information
echo 6. Display Installed Software
echo 7. Back to Main Menu
echo ================================
set /p infochoice="Select an option: "

if "%infochoice%"=="1" (
    systeminfo
) else if "%infochoice%"=="2" (
    wmic cpu get name,CurrentClockSpeed
) else if "%infochoice%"=="3" (
    wmic memorychip get capacity, speed
) else if "%infochoice%"=="4" (
    wmic diskdrive get model,size
) else if "%infochoice%"=="5" (
    wmic bios get serialnumber
) else if "%infochoice%"=="6" (
    wmic product get name,version
) else if "%infochoice%"=="7" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto SystemInformation

:BackupRestore
cls
echo ================================
echo      Backup and Restore
echo ================================
echo 1. Backup Files
echo 2. Restore Files
echo 3. List Backup Files
echo 4. Delete Backup Files
echo 5. Create a Directory for Backups
echo 6. Check Backup Status
echo 7. Back to Main Menu
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
    dir /b /s "C:\Backup\" 2>nul
) else if "%brchoice%"=="4" (
    set /p backupfile="Enter the name of the backup file to delete: "
    del "!backupfile!" 2>nul
    if errorlevel 1 (
        echo Failed to delete "!backupfile!". It may not exist.
    ) else (
        echo Backup file "!backupfile!" deleted successfully.
    )
) else if "%brchoice%"=="5" (
    set /p dirname="Enter the name of the directory for backups: "
    mkdir "!dirname!"
    echo Directory "!dirname!" created for backups.
) else if "%brchoice%"=="6" (
    echo Checking backup status...
    dir "C:\Backup\" 2>nul
) else if "%brchoice%"=="7" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto BackupRestore

:UserManagement
cls
echo ================================
echo      User Management
echo ================================
echo 1. Create a New User
echo 2. Delete a User
echo 3. Change User Password
echo 4. List All Users
echo 5. Enable User Account
echo 6. Disable User Account
echo 7. Back to Main Menu
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
    net user
) else if "%umchoice%"=="5" (
    set /p username="Enter the username to enable: "
    net user "!username!" /active:yes
    echo User "!username!" enabled successfully.
) else if "%umchoice%"=="6" (
    set /p username="Enter the username to disable: "
    net user "!username!" /active:no
    echo User "!username!" disabled successfully.
) else if "%umchoice%"=="7" (
    goto MainMenu
) else (
    echo Invalid choice! Please try again.
)
pause
goto UserManagement