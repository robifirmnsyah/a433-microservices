# Gunakan Node.js image sebagai base
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh source code
COPY . .

# Expose port yang digunakan
EXPOSE 3001

# Jalankan aplikasi
CMD ["node", "index.js"]
