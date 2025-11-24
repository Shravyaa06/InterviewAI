# 🎙️ AI Interview Coach

> **A real-time, voice-interactive interview simulator powering the next generation of candidate preparation.**

The **AI Interview Coach** is a sophisticated application designed to simulate real-world interview scenarios. By leveraging **FastAPI**, **WebSockets**, and **Google’s Generative AI (Gemini)**, it facilitates a natural, low-latency spoken conversation. Whether you are preparing for a behavioral HR round or a complex technical coding challenge, this tool provides immediate feedback, dynamic personality adjustments, and a comprehensive performance analysis.

---

## ⭐ Key Features

### 🗣️ Real-time Voice Interaction
Experience seamless, full-duplex communication. The system uses advanced audio processing and WebSockets to stream audio, enabling you to interrupt, pause, and converse naturally without the awkward lag typical of standard voice bots.

### 🎭 Dynamic Interviewer Personas
Tailor your practice session by selecting the interviewer's personality. This allows you to prepare for different pressures:
* **Normal:** A balanced, professional demeanor.
* **Strict:** Hard-hitting follow-up questions and a critical tone to test your stress management.
* **Friendly:** A supportive environment focused on building confidence.

### 💻 Tech Mode & Coding Editor
Switch to **Tech Mode** to activate an integrated coding environment. The AI shifts focus to technical questions, data structures, and algorithms, allowing you to write and discuss code in real-time.

### 📝 Live Transcript Dashboard
Watch the conversation unfold in real-time. The transcript panel logs both your speech and the AI's responses, ensuring you never miss a detail of the question asked.

### 📊 Comprehensive Feedback Engine
Upon ending the interview, the system performs a deep analysis of the session:
* **Numerical Scoring (0–100):** Instant quantitative assessment.
* **Qualitative Analysis:** Detailed breakdown of strengths and weaknesses.
* **Actionable Roadmap:** Specific steps to improve your answers, tone, and technical accuracy.

---

## 🛠️ Architecture & Prerequisites

### System Requirements
* **Python:** Version **3.8** or higher.
* **FFmpeg:** Essential for audio encoding/decoding.

#### FFmpeg Installation
* **macOS:** `brew install ffmpeg`
* **Windows:** Download from the [official site](https://ffmpeg.org/download.html) and add to System `PATH`.
* **Linux:** `sudo apt install ffmpeg`

---

## 🔐 Configuration & API Keys

To run this application, you must configure environment variables to authenticate with Google's AI services and Ngrok's tunneling service.

### 1. Create the Environment File
Create a file named `.env` in the root directory of the project (`AI-Interview-Coach/`).

### 2. Get Your Credentials

#### 🅰️ Google API Key (Vertex AI / Gemini)
You need a valid API key to access Google's Generative AI models.
1.  Visit the **[Google Cloud Console](https://console.cloud.google.com/vertex-ai)** (for Vertex AI) or **[Google AI Studio](https://aistudio.google.com/)**.
2.  Create a project (if you haven't already).
3.  Navigate to **APIs & Services > Credentials** or the **Get API key** section.
4.  Create a new API key.

#### 🅱️ Ngrok Auth Token
Ngrok is used to expose your local server, which is often required for secure WebSocket connections (WSS) or external callbacks.
1.  Log in to your **[Ngrok Dashboard](https://dashboard.ngrok.com/get-started/your-authtoken)**.
2.  Go to "Your Authtoken" in the sidebar.
3.  Copy the token string.

### 3. Fill the `.env` File
Copy the template below and paste it into your `.env` file, replacing the placeholders with your actual keys.

**Template:**
```env
# .env file

# Your Google Gemini/Vertex AI API Key
GOOGLE_API_KEY=AIzaSyD...YourActualKeyHere...

# Your Ngrok Authentication Token
NGROK_AUTH_TOKEN=28...YourNgrokTokenHere...
````

-----

## 🚀 Installation & Quick Start

### ⚠️ Note for Google Colab Users

This project was originally optimized for **Google Colab**. If running locally, `main.py` automatically detects your environment and utilizes the standard Python libraries.

### Option A: macOS / Linux 🍎🐧

**1. Setup Environment**
Run the automated setup script to install dependencies and configure the virtual environment.

```bash
chmod +x scripts/setup_mac_linux.sh
./scripts/setup_mac_linux.sh
```

**2. Start the Application**
Launch the server and the interface.

```bash
chmod +x scripts/run_mac_linux.sh
./scripts/run_mac_linux.sh
```

-----

### Option B: Windows 🪟

**1. Setup Environment**
Double-click the setup batch file to install requirements:

```
scripts/setup_windows.bat
```

**2. Start the Application**
Double-click the run batch file:

```
scripts/run_windows.bat
```

-----

## 🌐 Usage

Once the server is running, open your web browser and navigate to:

```
[http://127.0.0.1:8000](http://127.0.0.1:8000)
```

1.  **Grant Permissions:** Allow microphone access when prompted.
2.  **Select Mode:** Choose your Interviewer Persona and whether you want Tech Mode.
3.  **Start:** Click the "Start Interview" button and say "Hello" to begin.

-----

## 📁 Project Structure

```text
AI-Interview-Coach/
├── .env                    # [Create This] Stores API keys (excluded from git)
├── main.py                 # Core Backend: FastAPI, WebSockets, AI Logic
├── index.html              # Frontend: UI, Audio capture, & WebSocket client
├── requirements.txt        # Python dependencies (FastAPI, uvicorn, google-genai, etc.)
├── README.md               # Project documentation
└── scripts/                # Automation helpers
    ├── setup_mac_linux.sh
    ├── run_mac_linux.sh
    ├── setup_windows.bat
    └── run_windows.bat
```

-----

## 📘 Troubleshooting

  * **WebSocket Error:** Ensure `NGROK_AUTH_TOKEN` is correct in your `.env` file. If running locally without Ngrok, ensure your firewall allows port 8000.
  * **Audio Issues:** Verify FFmpeg is installed and accessible via your system terminal (`ffmpeg -version`).
  * **API Errors:** If the AI does not respond, check your `GOOGLE_API_KEY` quota and validity in the Google Cloud Console.

<!-- end list -->
