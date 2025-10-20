# Reliable API — Play Mode Kit v5 🎮

Welcome to **Play Mode**, a hands-on sandbox for learning how to build reliable, idempotent APIs using **FastAPI**, **Docker**, and modern API engineering principles.

This environment is intentionally lightweight and friendly.  
It’s built for learners who want to *experiment, break things safely,* and understand how reliability works in real-world systems.

---

## 🚀 Quick Start

### 1️⃣ Clone this repo
```bash
git clone https://github.com/braden-hamm/reliable-api-play.git
cd reliable-api-play
```

### 2️⃣ Prepare your environment
```bash
Copy-Item .\assets\.env.example .\assets\.env
```

### 3️⃣ Run with Docker
```bash
docker compose up --build
```

Then visit [http://localhost:8000](http://localhost:8000) to explore the demo API.

---

## 🧩 What You’ll Learn

| Concept | Level | Description |
|----------|--------|-------------|
| **Idempotency** | 🟢 Beginner | Safely handle repeated requests without breaking data. |
| **Health & Monitoring** | 🟢 Beginner | Add `/health` endpoints to check API uptime. |
| **Error Handling** | 🟡 Intermediate | Gracefully manage timeouts, invalid inputs, and failed retries. |
| **Containerization** | 🟢 Beginner | Learn to build and run your own Dockerized FastAPI app. |
| **Security Basics** | 🟠 Intermediate | Apply validation and secret-management best practices. |

---

## 🏗 Project Structure

```
assets/
 ├── fastapi_app/
 │    ├── app.py              → Core API logic
 │    ├── Dockerfile          → Build instructions
 │    ├── requirements.txt    → Dependencies
 │
 ├── .env.example             → Example environment file
 └── docker-compose.yml       → Stack configuration

verify_build.sh               → Local build validator
security_sweep.py             → Simple static scan for leaks
```

---

## 💡 Tips for Learners

- Change endpoint names and rerun the build to see how idempotency reacts.  
- Edit `requirements.txt` and rebuild to test dependency management.  
- Use VS Code Dev Containers or Docker Desktop to observe logs interactively.  
- Document your experiments — this kit is meant to *grow with you.*

---

## 🏷 Keywords
`#FastAPI` · `#Docker` · `#APILearning` · `#ReliableAPI` · `#PlayMode`

---

## ⚖️ License
MIT License © 2025 Braden Hamm  
See [`LICENSE.md`](./LICENSE.md) for details.
