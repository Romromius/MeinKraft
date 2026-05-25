@echo off
title Uploading Minecraft Mods
cd /d "%~dp0"

echo Adding all files...
git add -A

echo Creating commit...
git commit -m "Force update mods: %date% %time%"

echo Forcing upload to GitHub...
git push origin master --force

echo Done! Your friends can now update.
pause
