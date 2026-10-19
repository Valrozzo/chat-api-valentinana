FROM node:22-alpine

WORKDIR /app/backend

COPY backend/package*.json ./
RUN npm ci --omit=dev

COPY backend/server.js ./server.js
COPY frontend /app/frontend

EXPOSE 3000

CMD ["npm", "start"]