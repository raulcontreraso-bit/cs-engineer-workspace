@echo off
echo ===================================
echo   Syncing 02_python with GitHub
echo ===================================
echo.

:: Step 1: Stage changes ONLY in the 02_python directory
git add "cs-engineer-workspace\02_python"
echo [OK] Staging changes in cs-engineer-workspace\02_python...
echo.

:: Ask for commit message
set /p msg="Enter a commit message for Python changes: "

:: Step 2: Commit only the staged files in that folder
git commit -m "[02_python] %msg%"
echo.

:: Step 3: Push changes to GitHub
echo Pushing changes to GitHub...
git push
echo.

echo ===================================
echo   Python Folder Synced Successfully!
echo ===================================
pause