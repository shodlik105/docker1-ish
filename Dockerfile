FROM node:18-alpine

# Katalogni yaratish
WORKDIR /node-app

# Loyihani nusxalash
COPY package*.json ./
RUN npm install express

# Manba kodini nusxalash
COPY . .

# Portni ochish
EXPOSE 3000

# Ilovani ishga tushirish
CMD ["node", "index.js"]

