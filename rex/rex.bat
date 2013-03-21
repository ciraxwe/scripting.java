@echo off

SET DIR=%~dp0%

@PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command "[System.Threading.Thread]::CurrentThread.CurrentCulture = ''; [System.Threading.Thread]::CurrentThread.CurrentUICulture = '';& '%DIR%src\powershell\Rex' %*"
