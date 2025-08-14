@echo off
REM ==========================================
REM LowBots Full Dependency Installer
REM Created by Loweez / LVZ Studios
REM ==========================================

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
pip install --upgrade pip
pip install discord.py
pip install python-dotenv
pip install chat-exporter

echo.
echo All dependencies installed successfully!
pause
