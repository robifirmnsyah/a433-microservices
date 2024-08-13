# Gunakan Node.js image sebagai base
FROM node:18-alpine

# Set working directory
WORKDIR /src

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh source code
COPY . .

# Run npm ci instead of npm install. Here we are copying any other files
RUN npm ci

# The alpine image doesn't come with bash pre-installed. We are installing it here because we might need to use it.
RUN apk add --no-cache bash

# Expose port yang digunakan
EXPOSE 3001

# Jalankan aplikasi
CMD ["node", "index.js"]

