@echo off
setlocal

rem Check for PowerShell
where /q powershell.exe
if %errorlevel% neq 0 (
    echo PowerShell is not available on this computer.
    echo How are you on a Windows Machine and you don't have PowerShell?
    pause
    exit /b
)

rem Execute the PowerShell script
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0networks.ps1"

:end