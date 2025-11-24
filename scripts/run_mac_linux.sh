#!/bin/bash

# Navigate to project root
cd "$(dirname "$0")/.."

echo "=========================================="
echo "      Starting AI Interviewer Server"
echo "=========================================="

# Check if venv exists
if [ ! -d "venv" ]; then
    echo "Virtual environment not found! Please run setup_mac_linux.sh first."
    exit 1
fi

source venv/bin/activate

# Set API keys here if needed
# export GOOGLE_API_KEY="your_key_here"

echo "Starting Uvicorn..."
echo "Open your browser at http://127.0.0.1:8000"
python -m uvicorn main:app --reload --host 0.0.0.0 --port 8000