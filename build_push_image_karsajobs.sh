#!/bin/bash

# 1. Build image
docker build -t karsajobs:v2 .

# 2. Melihat daftar image 
docker images

# 3. Mengubah nama image
docker tag karsajobs:v2 robifirmansyah/karsajobs:v2

# 4. Login ke Docker Hub 
#docker login -u robifirmansyah

# 5. Push image ke Docker Hub
docker push robifirmansyah/karsajobs:v2