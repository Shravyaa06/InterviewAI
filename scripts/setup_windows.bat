@echo off
echo ==========================================
echo      AI Interviewer - Windows Setup
echo ==========================================

cd /d "%~dp0.."

echo [1/3] Creating Python Virtual Environment...
python -m venv venv

echo [2/3] Activating Virtual Environment...
call venv\Scripts\activate

echo [3/3] Installing Dependencies...
pip install --upgrade pip
pip install -r requirements.txt

echo.
echo ==========================================
echo        Setup Complete! 
echo ==========================================
echo You can now run 'scripts\run_windows.bat' to start the server.
pause