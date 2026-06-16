# 🐳 Week 01 — Docker

![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat-square)
![Tool](https://img.shields.io/badge/Tool-Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![Docker Hub](https://img.shields.io/badge/Docker%20Hub-trisha05%2Fweek01--docker--app-blue?style=flat-square&logo=docker)

---

## 🎯 What I Learned This Week

Getting hands-on with Docker — understanding how containerization works, building images, running containers, multi-container environments using Docker Compose, and publishing images to Docker Hub.

---

## ✅ Progress

- [x] Dockerfile created for Node.js app
- [x] Multi-stage Dockerfile for optimized image size
- [x] `.dockerignore` added to keep image clean
- [x] Environment variables with `.env.example`
- [x] Container running on port 3000
- [x] Health endpoint working (`/health`)
- [x] Docker Compose setup with Node.js + MongoDB
- [x] Persistent volumes added for MongoDB data
- [x] Docker image published to Docker Hub ✅

---

## 📁 Files

| File | Description |
|------|-------------|
| `Dockerfile` | Multi-stage Docker image for Node.js app |
| `server.js` | Express server with `/` and `/health` endpoints |
| `package.json` | App dependencies |
| `docker-compose.yml` | Multi-container setup — Node.js + MongoDB |
| `.dockerignore` | Files excluded from Docker image |
| `.env.example` | Environment variables template |

---

## 🏗️ Architecture

```
docker compose up
        ↓
┌─────────────────────────────────┐
│         Docker Network          │
│                                 │
│  ┌──────────────┐               │
│  │  Node.js App │ → port 3000   │
│  │  (Container) │               │
│  └──────┬───────┘               │
│         │ connects to           │
│  ┌──────▼───────┐               │
│  │   MongoDB    │ → port 27017  │
│  │  (Container) │               │
│  └──────────────┘               │
└─────────────────────────────────┘
```

---

## 🐳 Docker Hub

Image publicly available on Docker Hub:

👉 https://hub.docker.com/r/trisha05/week01-docker-app

### Pull and Run:
```bash
docker pull trisha05/week01-docker-app:latest
docker run -p 3000:3000 trisha05/week01-docker-app:latest
```

---

## 🚀 How to Run Locally

### Single Container:
```bash
docker build -t week01-app .
docker run -p 3000:3000 week01-app
```

### Multi Container (Docker Compose):
```bash
docker compose up
docker compose down
```

---

## 🧪 Test Endpoints

| Endpoint | Response |
|----------|----------|
| `http://localhost:3000` | Hello from Docker Container! |
| `http://localhost:3000/health` | Health status + uptime |

---

## 📸 Output

### `localhost:3000`
```json
{
  "message": "Hello from Docker Container!",
  "container": true,
  "timestamp": "2026-06-15T07:02:34.061Z"
}
```

### `localhost:3000/health`
```json
{
  "status": "healthy",
  "uptime": 23,
  "timestamp": "2026-06-15T07:02:57.000Z"
}
```

---

## 💡 Key Learnings

- Docker packages app + dependencies into a portable container
- Multi-stage builds reduce image size significantly
- `.dockerignore` prevents unnecessary files from being copied
- Docker Compose runs multiple containers together with one command
- Containers communicate with each other inside a Docker network
- MongoDB data persists using Docker volumes even after container stops
- Docker Hub allows sharing images publicly with the world

---

## 🔜 Coming Next — Week 02

AWS S3 — Buckets, file upload, static website hosting

---

*Part of [aws-cloud-journey](../README.md) — Week 01 of 06*
