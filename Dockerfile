# Menggunakan image Node.js sebagai base image
FROM node:18-alpine

# Set work directory di dalam container
WORKDIR /src

# Menyalin semua file dari direktori sumber ke direktori kerja dalam image
COPY . .

# Menginstal dependensi aplikasi yang tercantum dalam package.json
RUN npm install

# Gunakan npm ci untuk instalasi yang lebih cepat dan bersih
RUN npm ci

# Menginstal bash, yang mungkin diperlukan selama pengembangan atau untuk skrip tertentu
RUN apk add --no-cache bash

# Expose port yang akan digunakan oleh aplikasi
EXPOSE 3001

# Definisikan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]


