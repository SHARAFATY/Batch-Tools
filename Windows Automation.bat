::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBNdXwyDAE+1EbsQ5+n//NaOoUITGus8d+8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF25
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIFJA9dQQWWOSuND7sY5//or8uStkIQVfY2d4Gb7ruBLIA=
::eg0/rx1wNQPfEVWB+kM9LVsJDDOLMm+1EaZcyf3v4OeGtkQSWoI=
::fBEirQZwNQPfEVWB+kM9LVsJDDOLMm+1EaZcyf3v4OeGtkQSWoI=
::cRolqwZ3JBvQF1fEqQIFJA9dQQWWOSuND7sY5//or8uStkIQVfY2d4Gb7ruBLKA371btcpgo0jp4gYs9GRJbdSGiYhkxuw4=
::dhA7uBVwLU+EWGiR/UE7GxJYWgGQcWe7BNU=
::YQ03rBFzNR3SWATExVc5KxBnQA2UOXn3CrQeiA==
::dhAmsQZ3MwfNWATExVc5KxBnQA2UOXn3CrQeiA==
::ZQ0/vhVqMQ3MEVWAtB9wGQ5dTw+xMGKsA6dR5On5jw==
::Zg8zqx1/OA3MEVWAtB9wGQ5dTw+xMGKsA6dR5On5jw==
::dhA7pRFwIByZRRmh+kg/MVpnLA==
::Zh4grVQjdCyDJGyX8VAjFBNdXwyDAES0A5EO4f7+086CsUYJW/IDT4bV3ruZM6Ay/1HreJc533VU1s4UCXs=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Ultimate Windows Automation Tool
color 0A

:main_menu
cls
echo ==============================================================================
echo                           Ultimate Windows Automation Tool                   
echo ==============================================================================
echo [1] System Utilities         [2] File Management          [3] Network Tools
echo [4] Productivity Tools       [5] Personalization          [6] User Management
echo [7] Security Tools           [8] Backup and Restore       [9] Exit
echo ==============================================================================
set /p choice=Select a category (1-9): 

if "%choice%"=="1" goto system_utilities
if "%choice%"=="2" goto file_management
if "%choice%"=="3" goto network_tools
if "%choice%"=="4" goto productivity_tools
if "%choice%"=="5" goto personalization
if "%choice%"=="6" goto user_management
if "%choice%"=="7" goto security_tools
if "%choice%"=="8" goto backup_restore
if "%choice%"=="9" exit

:: ---------------------------------
:: SYSTEM UTILITIES MENU
:system_utilities
cls
echo ============================ System Utilities ===============================
echo [1] Clean Temporary Files          [2] Disk Cleanup
echo [3] Display System Information     [4] View Running Processes
echo [5] Open Task Manager              [6] Enable/Disable Startup Apps
echo [7] Check Disk (CHKDSK)            [8] Defragment Disk
echo [9] Return to Main Menu
echo ==============================================================================
set /p util_choice=Select an option (1-9): 

if "%util_choice%"=="1" goto clean_temp
if "%util_choice%"=="2" goto disk_cleanup
if "%util_choice%"=="3" goto display_sysinfo
if "%util_choice%"=="4" goto view_processes
if "%util_choice%"=="5" goto open_taskmgr
if "%util_choice%"=="6" goto manage_startup
if "%util_choice%"=="7" goto chkdsk
if "%util_choice%"=="8" goto defrag_disk
if "%util_choice%"=="9" goto main_menu

:clean_temp
cls
echo Cleaning temporary files...
del /s /q %temp%\*
rd /s /q %temp% >nul 2>&1
echo Temporary files cleaned.
pause
goto system_utilities

:disk_cleanup
cls
echo Running Disk Cleanup...
cleanmgr
pause
goto system_utilities

:display_sysinfo
cls
echo Displaying system information...
systeminfo
pause
goto system_utilities

:view_processes
cls
echo Viewing running processes...
tasklist
pause
goto system_utilities

:open_taskmgr
cls
echo Opening Task Manager...
start taskmgr
goto system_utilities

:manage_startup
cls
echo Opening Startup Manager...
start shell:startup
pause
goto system_utilities

:chkdsk
cls
echo Checking disk...
set /p drive=Enter the drive letter to check (e.g., C): 
chkdsk %drive%: /f /r
pause
goto system_utilities

:defrag_disk
cls
echo Defragmenting disk...
set /p defrag_drive=Enter the drive letter to defrag (e.g., C): 
defrag %defrag_drive%:
pause
goto system_utilities

:: ---------------------------------
:: FILE MANAGEMENT MENU
:file_management
cls
echo ============================ File Management ================================
echo [1] Batch Rename Files           [2] Organize Files by Type
echo [3] Compress Files (ZIP)        [4] Decompress ZIP Files
echo [5] Delete Large Files          [6] Search for Files
echo [7] Show Hidden Files           [8] Return to Main Menu
echo ==============================================================================
set /p file_choice=Select an option (1-8): 

if "%file_choice%"=="1" goto batch_rename
if "%file_choice%"=="2" goto organize_files
if "%file_choice%"=="3" goto compress_files
if "%file_choice%"=="4" goto decompress_files
if "%file_choice%"=="5" goto delete_large_files
if "%file_choice%"=="6" goto search_files
if "%file_choice%"=="7" goto show_hidden_files
if "%file_choice%"=="8" goto main_menu

:batch_rename
cls
echo Renaming files in batch...
set /p folder=Enter the folder path: 
set /p extension=Enter the file extension (e.g., txt): 
set /p newname=Enter the new file name prefix: 
cd /d %folder%
setlocal enabledelayedexpansion
set i=1
for %%f in (*.%extension%) do (
    ren "%%f" "%newname%!i!.%extension%"
    set /a i+=1
)
echo Files renamed successfully.
pause
goto file_management

:organize_files
cls
set /p folder=Enter the folder path to organize: 
cd /d %folder%
mkdir Images Documents Videos Others 2>nul
move *.jpg *.png Images 2>nul
move *.doc *.docx *.pdf Documents 2>nul
move *.mp4 *.avi Videos 2>nul
move *.* Others 2>nul
echo Files organized by type.
pause
goto file_management

:compress_files
cls
echo Compressing files into ZIP...
set /p source=Enter the folder/file to compress: 
set /p destination=Enter the output ZIP file path: 
powershell Compress-Archive -Path "%source%" -DestinationPath "%destination%"
echo Files compressed successfully.
pause
goto file_management

:decompress_files
cls
echo Decompressing ZIP file...
set /p zipfile=Enter the ZIP file path: 
set /p destination=Enter the extraction path: 
powershell Expand-Archive -Path "%zipfile%" -DestinationPath "%destination%"
echo ZIP file decompressed successfully.
pause
goto file_management

:delete_large_files
cls
echo Deleting files larger than 100MB...
set /p folder=Enter the folder path: 
forfiles /p %folder% /s /m *.* /c "cmd /c if @fsize gtr 104857600 del @path"
echo Large files deleted successfully.
pause
goto file_management

:search_files
cls
echo Searching for files...
set /p folder=Enter the folder path: 
set /p searchname=Enter the file name or pattern to search: 
dir /s /b "%folder%\%searchname%"
pause
goto file_management

:show_hidden_files
cls
echo Showing hidden files...
attrib -h -s /s /d
echo Hidden files are now visible.
pause
goto file_management

:: ---------------------------------
:: USER MANAGEMENT MENU
:user_management
cls
echo ============================ User Management ================================
echo [1] View User Accounts           [2] Create New User Account
echo [3] Delete User Account          [4] Change User Password
echo [5] Enable/Disable User Account  [6] View User Groups
echo [7] Change User Permissions      [8] Return to Main Menu
echo ==============================================================================
set /p user_choice=Select an option (1-8): 

if "%user_choice%"=="1" goto view_users
if "%user_choice%"=="2" goto create_user
if "%user_choice%"=="3" goto delete_user
if "%user_choice%"=="4" goto change_password
if "%user_choice%"=="5" goto enable_disable_user
if "%user_choice%"=="6" goto view_groups
if "%user_choice%"=="7" goto change_permissions
if "%user_choice%"=="8" goto main_menu

:view_users
cls
echo Viewing user accounts...
net user
pause
goto user_management

:create_user
cls
set /p username=Enter username for new account: 
set /p password=Enter password for new account: 
net user %username% %password% /add
echo User account %username% created successfully.
pause
goto user_management

:delete_user
cls
set /p username=Enter the username to delete: 
net user %username% /delete
echo User account %username% deleted successfully.
pause
goto user_management

:change_password
cls
set /p username=Enter the username for password change: 
set /p password=Enter the new password: 
net user %username% %password%
echo Password for %username% changed successfully.
pause
goto user_management

:enable_disable_user
cls
set /p username=Enter the username to enable/disable: 
echo [1] Enable User  [2] Disable User
set /p action=Choose an option (1-2): 
if "%action%"=="1" net user %username% /active:yes
if "%action%"=="2" net user %username% /active:no
echo User %username% updated successfully.
pause
goto user_management

:view_groups
cls
echo Viewing user groups...
net localgroup
pause
goto user_management

:change_permissions
cls
set /p username=Enter username to change permissions: 
set /p permission=Enter the new permission (e.g., admin, user): 
net localgroup %permission% %username% /add
echo Permissions for %username% updated to %permission%.
pause
goto user_management

:: ---------------------------------
:: SECURITY TOOLS MENU
:security_tools
cls
echo ============================ Security Tools ================================
echo [1] Check Windows Defender Status     [2] Run Antivirus Scan
echo [3] Enable/Disable Windows Defender   [4] Check Windows Firewall Status
echo [5] Show System Security Info         [6] Enable BitLocker
echo [7] Encrypt File with BitLocker       [8] Return to Main Menu
echo ==============================================================================
set /p sec_choice=Select an option (1-8): 

if "%sec_choice%"=="1" goto check_defender
if "%sec_choice%"=="2" goto run_scan
if "%sec_choice%"=="3" goto enable_disable_defender
if "%sec_choice%"=="4" goto check_firewall
if "%sec_choice%"=="5" goto system_security_info
if "%sec_choice%"=="6" goto enable_bitlocker
if "%sec_choice%"=="7" goto encrypt_file
if "%sec_choice%"=="8" goto main_menu

:check_defender
cls
echo Checking Windows Defender status...
sc query WinDefend
pause
goto security_tools

:run_scan
cls
echo Running antivirus scan...
start "Antivirus Scan" mpcmdrun -scan
pause
goto security_tools

:enable_disable_defender
cls
echo [1] Enable Windows Defender   [2] Disable Windows Defender
set /p defender_action=Choose an option (1-2): 
if "%defender_action%"=="1" sc start WinDefend
if "%defender_action%"=="2" sc stop WinDefend
echo Windows Defender status updated.
pause
goto security_tools

:check_firewall
cls
echo Checking Windows Firewall status...
netsh advfirewall show allprofiles state
pause
goto security_tools

:system_security_info
cls
echo Displaying system security information...
systeminfo | findstr /i "Security"
pause
goto security_tools

:enable_bitlocker
cls
echo Enabling BitLocker...
manage-bde -on C:
pause
goto security_tools

:encrypt_file
cls
set /p filepath=Enter the path of the file to encrypt: 
manage-bde -on %filepath%
echo File encrypted successfully.
pause
goto security_tools

:: ---------------------------------
:: BACKUP & RESTORE MENU
:backup_restore
cls
echo ============================ Backup and Restore ================================
echo [1] Create System Restore Point    [2] Backup Important Files
echo [3] Restore from Backup            [4] Create Disk Image
echo [5] Backup Windows Registry       [6] Restore Registry from Backup
echo [7] View System Restore History    [8] Return to Main Menu
echo ==============================================================================
set /p backup_choice=Select an option (1-8): 

if "%backup_choice%"=="1" goto create_restore_point
if "%backup_choice%"=="2" goto backup_files
if "%backup_choice%"=="3" goto restore_backup
if "%backup_choice%"=="4" goto create_disk_image
if "%backup_choice%"=="5" goto backup_registry
if "%backup_choice%"=="6" goto restore_registry
if "%backup_choice%"=="7" goto view_restore_history
if "%backup_choice%"=="8" goto main_menu

:create_restore_point
cls
echo Creating system restore point...
wmic /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Backup", 100, 7
echo Restore point created successfully.
pause
goto backup_restore

:backup_files
cls
set /p source=Enter the folder to backup (e.g., C:\Documents): 
set /p destination=Enter the backup destination (e.g., D:\Backup): 
xcopy %source% %destination% /E /H /C /I
echo Files backed up successfully.
pause
goto backup_restore

:restore_backup
cls
set /p source=Enter the backup folder path (e.g., D:\Backup): 
set /p destination=Enter the destination folder (e.g., C:\Documents): 
xcopy %source% %destination% /E /H /C /I
echo Files restored successfully.
pause
goto backup_restore

:create_disk_image
cls
echo Creating disk image...
echo Please ensure that you have selected the correct disk.
dd if=\\.\PhysicalDrive0 of=D:\Backup\disk_image.img bs=1M
echo Disk image created successfully.
pause
goto backup_restore

:backup_registry
cls
echo Backing up Windows registry...
reg export HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall C:\registry_backup.reg
echo Registry backed up successfully.
pause
goto backup_restore

:restore_registry
cls
echo Restoring Windows registry...
reg import C:\registry_backup.reg
echo Registry restored successfully.
pause
goto backup_restore

:view_restore_history
cls
echo Viewing system restore history...
vssadmin list shadows
pause
goto backup_restore

:: ---------------------------------
:: NETWORK TOOLS MENU
:network_tools
cls
echo ============================ Network Tools ================================
echo [1] Ping a Website               [2] Check IP Configuration
echo [3] Test Internet Speed          [4] Flush DNS Cache
echo [5] Trace Network Route          [6] View Active Network Connections
echo [7] Configure Firewall Settings  [8] Return to Main Menu
echo ==============================================================================
set /p net_choice=Select an option (1-8): 

if "%net_choice%"=="1" goto ping_website
if "%net_choice%"=="2" goto check_ipconfig
if "%net_choice%"=="3" goto test_speed
if "%net_choice%"=="4" goto flush_dns
if "%net_choice%"=="5" goto trace_route
if "%net_choice%"=="6" goto view_net_connections
if "%net_choice%"=="7" goto firewall_settings
if "%net_choice%"=="8" goto main_menu

:ping_website
cls
set /p website=Enter the website to ping (e.g., google.com): 
ping %website%
pause
goto network_tools

:check_ipconfig
cls
echo Displaying IP configuration...
ipconfig /all
pause
goto network_tools

:test_speed
cls
echo Testing internet speed...
powershell -Command "& {Invoke-WebRequest -Uri https://fast.com -UseBasicParsing | Out-String}"
pause
goto network_tools

:flush_dns
cls
echo Flushing DNS cache...
ipconfig /flushdns
echo DNS cache flushed.
pause
goto network_tools

:trace_route
cls
set /p hostname=Enter the hostname to trace (e.g., google.com): 
tracert %hostname%
pause
goto network_tools

:view_net_connections
cls
echo Viewing active network connections...
netstat -an
pause
goto network_tools

:firewall_settings
cls
echo Opening Windows Firewall settings...
start control /name Microsoft.WindowsFirewall
pause
goto network_tools

:: ---------------------------------
:: PRODUCTIVITY TOOLS MENU
:productivity_tools
cls
echo ============================ Productivity Tools ================================
echo [1] Open Notepad                [2] Open Calculator
echo [3] Open Microsoft Word         [4] Set a Reminder
echo [5] Create a To-Do List         [6] Open Calendar
echo [7] Open a Website              [8] Return to Main Menu
echo ==============================================================================
set /p prod_choice=Select an option (1-8): 

if "%prod_choice%"=="1" start notepad & goto productivity_tools
if "%prod_choice%"=="2" start calc & goto productivity_tools
if "%prod_choice%"=="3" start winword & goto productivity_tools
if "%prod_choice%"=="4" goto set_reminder
if "%prod_choice%"=="5" goto create_todo
if "%prod_choice%"=="6" start outlookcal: & goto productivity_tools
if "%prod_choice%"=="7" goto open_website
if "%prod_choice%"=="8" goto main_menu

:set_reminder
cls
set /p time=Enter time in HH:MM format (24-hour clock): 
set /p message=Enter your reminder message: 
echo Reminder set! "%message%" will alert at %time%.
timeout /t %time%
echo %message%
pause
goto productivity_tools

:create_todo
cls
echo Creating a to-do list...
set /p todo=Enter items for your to-do list (comma-separated): 
echo Your To-Do List: > todo.txt
for %%i in (%todo%) do echo %%i >> todo.txt
notepad todo.txt
goto productivity_tools

:open_website
cls
set /p url=Enter the website URL (e.g., https://www.google.com): 
start %url%
goto productivity_tools

:: ---------------------------------
:: PERSONALIZATION MENU
:personalization
cls
echo ============================ Personalization ================================
echo [1] Change Desktop Wallpaper      [2] Change System Theme
echo [3] Enable Dark Mode              [4] Change Mouse Pointer
echo [5] Change Display Settings       [6] Set Screen Timeout
echo [7] Reset Desktop Layout          [8] Return to Main Menu
echo ==============================================================================
set /p pers_choice=Select an option (1-8): 

if "%pers_choice%"=="1" goto change_wallpaper
if "%pers_choice%"=="2" goto change_theme
if "%pers_choice%"=="3" goto enable_dark_mode
if "%pers_choice%"=="4" goto change_pointer
if "%pers_choice%"=="5" goto display_settings
if "%pers_choice%"=="6" goto screen_timeout
if "%pers_choice%"=="7" goto reset_desktop
if "%pers_choice%"=="8" goto main_menu

:change_wallpaper
cls
set /p wallpaper_path=Enter full path of the image: 
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper_path%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
echo Wallpaper changed successfully.
pause
goto personalization

:change_theme
cls
echo Changing system theme...
start ms-settings:themes
pause
goto personalization

:enable_dark_mode
cls
echo Enabling Dark Mode...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f
echo Dark Mode enabled!
pause
goto personalization

:: Add more features for the other menus like User Management, Security Tools, and Backup/Restore in a similar modular way.
