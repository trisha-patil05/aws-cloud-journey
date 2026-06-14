# 🐳 Week 01 — Docker

![Status](https://img.shields.io/badge/Status-Completed-green?style=flat-square)
![Tool](https://img.shields.io/badge/Tool-Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![Compose](https://img.shields.io/badge/Docker%20Compose-Multi--Container-46E3B7?style=flat-square)

---

## 🎯 What I Learned This Week

Getting hands-on with Docker — understanding how containerization works, building images, running containers, and setting up multi-container environments using Docker Compose.

---

## ✅ Progress

- [x] Dockerfile created for Node.js app
- [x] Docker image built successfully
- [x] Container running on port 3000
- [x] Health endpoint working (`/health`)
- [x] Docker Compose setup with Node.js + MongoDB
- [x] Multi-container environment running locally

---

## 📁 Files

| File | Description |
|------|-------------|
| `Dockerfile` | Docker image instructions for Node.js app |
| `server.js` | Express server with `/` and `/health` endpoints |
| `package.json` | App dependencies |
| `docker-compose.yml` | Multi-container setup — Node.js + MongoDB |

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

## 🚀 How to Run

### Single Container (Dockerfile only):
```bash
# Build image
docker build -t week01-app .

# Run container
docker run -p 3000:3000 week01-app
```

### Multi Container (Docker Compose):
```bash
# Start all services
docker compose up

# Stop all services
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
  "timestamp": "2026-06-14T10:00:00.000Z"
}
```

### `localhost:3000/health`
```json
{
  "status": "healthy",
  "uptime": 23,
  "timestamp": "2026-06-14T10:00:23.000Z"
}
```

---

## 💡 Key Learnings

- Docker packages app + dependencies into a portable container
- `docker build` creates an image from Dockerfile
- `docker run` starts a container from that image
- Docker Compose runs multiple containers together with one command
- Containers communicate with each other inside a Docker network
- MongoDB data persists using Docker volumes even after container stops

---

## 🔜 Coming Next — Week 02

AWS S3 — Buckets, file upload, static website hosting

---

*Part of [aws-cloud-journey](../README.md) — Week 01 of 06*