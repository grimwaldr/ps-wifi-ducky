@echo off
setlocal

rem Check for PowerShell
where /q powershell.exe
if %errorlevel% neq 0 (
    echo How are you on a Windows Machine and you don't have PowerShell? It's 2023!
    pause
    exit /b
)

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0networks.ps1"

:end
