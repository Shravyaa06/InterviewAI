#!/bin/bash

# Navigate to project root
cd "$(dirname "$0")/.."

echo "=========================================="
echo "   AI Interviewer - Mac/Linux Setup"
echo "=========================================="

echo "[1/3] Creating Python Virtual Environment..."
python3 -m venv venv

echo "[2/3] Activating Virtual Environment..."
source venv/bin/activate

echo "[3/3] Installing Dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo ""
echo "=========================================="
echo "       Setup Complete!"
echo "=========================================="
echo "You can now run './scripts/run_mac_linux.sh' to start the server."