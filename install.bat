@echo off
title Installing Minecraft Mods
cd /d "%~dp0"

:: Replace this URL with your actual GitHub repository URL
set REPO_URL=https://github.com/Romromius/MeinKraft

echo Checking if folder is ready...
:: Check if there are files in the directory (excluding this script)
dir /b /a | findstr /v /i "install.bat" >nul
if %errorlevel% equ 0 (
    echo.
    echo ERROR: The mods folder must be EMPTY to install!
    echo Please move or delete your existing mods before running this.
    echo.
    pause
    exit /b
)

echo Initializing local Git repository...
git init

echo Connecting to GitHub repository...
git remote add origin %REPO_URL%

echo Downloading mods directly into this folder...
:: Fetches the files without creating a subfolder
git fetch origin
git checkout -b main origin/master

echo.
echo Success! Mods installed successfully.
echo You can now delete this installer script.
echo.
pause
