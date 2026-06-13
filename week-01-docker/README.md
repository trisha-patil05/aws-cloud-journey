# 🐳 Week 01 — Docker

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow?style=flat-square)
![Tool](https://img.shields.io/badge/Tool-Docker-2496ED?style=flat-square&logo=docker&logoColor=white)

---

## 🎯 What I Learned This Week

Getting hands-on with Docker — understanding how containerization works and how it's used in real industry projects.

---

## ✅ Progress

- [x] Dockerfile created for Node.js app
- [x] Docker image built successfully
- [x] Container running on port 3000
- [x] Health endpoint working (`/health`)
- [ ] Docker Compose setup — coming next

---

## 📁 Files

| File | Description |
|------|-------------|
| `Dockerfile` | Docker image instructions for Node.js app |
| `server.js` | Express server with `/` and `/health` endpoints |
| `package.json` | App dependencies |
| `docker-compose.yml` | Multi-container setup — coming soon |

---

## 🚀 How to Run

### Build Docker Image:
```bash
docker build -t week01-app .
```

### Run Container:
```bash
docker run -p 3000:3000 week01-app
```

### Test in Browser:
```
http://localhost:3000         → Hello from Docker Container!
http://localhost:3000/health  → Health status + uptime
```

---

## 📸 Output

### `localhost:3000`
```json
{
  "message": "Hello from Docker Container!",
  "container": true,
  "timestamp": "2026-06-13T06:53:00.744Z"
}
```

### `localhost:3000/health`
```json
{
  "status": "healthy",
  "uptime": 23,
  "timestamp": "2026-06-13T..."
}
```

---

## 💡 Key Learnings

- Docker packages app + dependencies into a portable container
- `docker build` creates an image from Dockerfile
- `docker run` starts a container from that image
- Same container runs identically on any machine — no "works on my machine" problem!

---

## 🔜 Coming Next

- Docker Compose — running Node.js + MongoDB together
- Multi-stage Dockerfile for smaller image size

---

*Part of [aws-cloud-journey](../README.md) — Week 01 of 06*