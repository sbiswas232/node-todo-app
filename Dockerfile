# Stage1----Build App. Code
FROM node:18-alpine AS builder

WORKDIR /app

# Copy All Dependencies
COPY package*.json /app

# Run Node Package Manager
RUN npm install
 
COPY . .

# Build by Node Package Manager
RUN npm run build

# Stage2---Create App. Runtime 
FROM nginx:alpine-perl

COPY --from=builder /app/build /usr/share/nginx/html/

