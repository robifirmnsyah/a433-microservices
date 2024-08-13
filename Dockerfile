# Menggunakan image Node.js sebagai base image
FROM node:18-alpine

# Set work directory di dalam container
WORKDIR /src

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# If you are building your code for production
# Run npm ci instead of npm install. Here we are copying any other files
RUN npm ci

# The alpine image doesn't come with bash pre-installed. We are installing it here because we might need to use it.
RUN apk add --no-cache bash

# Salin sisa kode aplikasi ke dalam container
COPY . .

# Expose port yang akan digunakan oleh aplikasi
EXPOSE 3000

# Definisikan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]


