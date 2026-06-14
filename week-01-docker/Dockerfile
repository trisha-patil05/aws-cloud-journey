# Stage 1 - Builder
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install

# Stage 2 - Production
FROM node:20-alpine AS production
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY . .
EXPOSE 3000
USER node
CMD ["node", "server.js"]