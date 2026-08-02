@echo off
echo ===================================
echo   Syncing Workspace with GitHub
echo ===================================
echo.

:: Step 1: Stage all changes
git add .
echo [OK] All changes staged.
echo.

:: Ask for commit message
echo set /p msg="Enter a brief commit message (e.g., Updated README or Added new lab): "
set "msg=..."Commit..."


:: Step 2: Commit changes
git commit -m "%msg%"
echo.

:: Step 3: Push to GitHub
echo Pushing changes to GitHub...
git push
echo.

echo ===================================
echo   Repository Updated Successfully!
echo ===================================
pause