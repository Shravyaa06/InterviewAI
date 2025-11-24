
# AI Interview Coach

A real-time, voice-interactive interview simulator that conducts mock interviews, provides immediate feedback, and generates a comprehensive performance summary. It leverages **FastAPI**, **WebSockets**, and **Google’s Generative AI** to deliver an interactive practice environment suitable for behavioral and technical interview preparation.

---

## ⭐ Features

### 🎙️ Real-time Voice Interaction  
Responsive, low-latency audio streaming through WebSockets, enabling natural conversation flow between the user and the AI interviewer.

### 🎭 Dynamic Personas  
Instantly switch the interviewer’s style between **Normal**, **Strict**, and **Friendly**, allowing tailored practice across varying levels of difficulty.

### 📝 Live Transcript  
A real-time transcript panel displays the evolving conversation between the user and the AI.

### 📊 Post-Interview Feedback  
After the session ends, the system generates a numerical score (0–100) alongside qualitative feedback describing strengths, weaknesses, and actionable improvement steps.

### 💻 Tech Mode  
Includes a dedicated coding editor for technical interview simulations.

---

## 🧩 Prerequisites

### ✔️ Python  
- Python **3.8+** is required.

### ✔️ FFmpeg (Required for audio processing)  
Install according to your OS:

- **macOS**  
  ```bash
  brew install ffmpeg
    ````

* **Windows**
  Download FFmpeg and add it to your system `PATH`.
* **Linux**

  ```bash
  sudo apt install ffmpeg
  ```

### ✔️ Google API Key

A Gemini API key is required.
Set it as an environment variable:

```bash
export GOOGLE_API_KEY="YOUR_KEY"
```

---

## ⚠️ Colab Compatibility Note

This project was originally optimized for **Google Colab** using `google.colab.ai`.
When running locally, `main.py` automatically falls back to standard Python libraries as long as your `GOOGLE_API_KEY` is set. This ensures the AI components function correctly outside of Colab's environment.

---

## 🚀 Quick Start

### 🍎 macOS / 🐧 Linux

#### Setup

Run the setup script:

```bash
chmod +x scripts/setup_mac_linux.sh
./scripts/setup_mac_linux.sh
```

#### Start the Server

```bash
chmod +x scripts/run_mac_linux.sh
./scripts/run_mac_linux.sh
```

---

### 🪟 Windows

#### Setup

Double-click:

```
scripts/setup_windows.bat
```

#### Start the Server

Double-click:

```
scripts/run_windows.bat
```

---

## 🌐 Access the Application

Once the server is up, visit:

```
http://127.0.0.1:8000
```

---

## 📁 Project Structure

```
AI-Interview-Coach/
├── main.py                 # FastAPI backend, WebSockets, audio processing, AI logic
├── index.html              # Frontend UI for recording, playback, and transcript
├── requirements.txt        # Python dependency list
└── scripts/                # Automation scripts for setup and execution
    ├── setup_mac_linux.sh
    ├── run_mac_linux.sh
    ├── setup_windows.bat
    └── run_windows.bat
```

---

## 📘 Summary

This project provides a complete interactive interview practice environment with voice support, personality customization, technical interview tools, and detailed feedback — ideal for preparing for real-world interviews.


