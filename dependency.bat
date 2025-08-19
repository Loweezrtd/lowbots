@echo off
REM ==========================================
REM LowBots Full Dependency Installer (Silent)
REM Created by Loweez / LVZ Studios
REM ==========================================

echo ==========================================
echo LowBots Full Dependency Installer (Silent)
echo Created by Loweez / LVZ Studios
echo ==========================================
echo.

cd /d "%~dp0"

echo Checking Python installation...
python --version >nul 2>&1
IF ERRORLEVEL 1 (
    echo Python is not installed. Please install Python 3.10 or higher from https://www.python.org/downloads/
    pause
    exit /b
) ELSE (
    echo Python detected.
)

echo.
echo Installing required packages...

REM Upgrade pip silently
python -m pip install --upgrade pip >nul 2>&1

REM Install packages silently
python -m pip install discord.py >nul 2>&1
python -m pip install python-dotenv >nul 2>&1
python -m pip install chat-exporter >nul 2>&1

echo.
echo All dependencies installed successfully!
pause
