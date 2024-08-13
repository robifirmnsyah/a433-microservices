# Menggunakan image Node.js sebagai base image
FROM node:18

# Set work directory di dalam container
WORKDIR /usr/src/app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin sisa kode aplikasi ke dalam container
COPY . .

# Expose port yang akan digunakan oleh aplikasi
EXPOSE 3000

# Definisikan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]


