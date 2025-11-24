@echo off
echo ==========================================
echo      Starting AI Interviewer Server
echo ==========================================

cd /d "%~dp0.."

:: Check if venv exists
if not exist venv (
    echo Virtual environment not found! Please run setup_windows.bat first.
    pause
    exit /b
)

call venv\Scripts\activate

:: Set API keys here if needed, e.g.:
:: set GOOGLE_API_KEY=your_key_here

echo Starting Uvicorn...
echo Open your browser at http://127.0.0.1:8000
python -m uvicorn main:app --reload --host 0.0.0.0 --port 8000

pause