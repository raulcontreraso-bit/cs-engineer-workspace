@echo off
echo ===================================
echo   Local Python Environment Setup
echo ===================================
echo.

if not exist .venv (
    echo [1/3] Creating virtual environment .venv...
    python -m venv .venv
    echo [OK] Created .venv
) else (
    echo [1/3] .venv environment already exists.
)

echo.
echo [2/3] Activating environment...
call .venv\Scripts\activate.bat

echo.
echo Upgrading pip...
python -m pip install --upgrade pip

echo.
if exist requirements.txt (
    echo [3/3] Installing packages from requirements.txt...
    pip install -r requirements.txt
    echo.
    echo [OK] All packages installed!
) else (
    echo [3/3] No requirements.txt file found. Skipping package installation.
)

echo.
echo ===================================
echo   Setup Complete!
echo ===================================
pause