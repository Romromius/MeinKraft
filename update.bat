@echo off
title Updating Minecraft Mods
cd /d "%~dp0"

echo Fetching latest updates from GitHub...
git fetch --all

echo Resetting local folder to match GitHub exactly...
git reset --hard origin/master

echo Cleaning up untracked files...
git clean -fd

echo Done! Your mods are updated.
pause
