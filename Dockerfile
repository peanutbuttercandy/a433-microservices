#mengambil base image node.js versi 14
FROM node:14-alpine

#membuat working directory app
WORKDIR /app

#menyalin code ke directory app
COPY . /app

#menciptakan node env agar aplikasi berada dalam production 
#mode dan item-db sebagai database host
ENV ENV NODE_ENV=production DB_HOST=item-db

#install dependencies dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#peluncuran aplikasi di port 8080
EXPOSE 8080

#menjalankan server
CMD ["npm", "start"]