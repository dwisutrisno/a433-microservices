# mengunakan base image node v14
FROM node:14
# tentukan working directory untuk container adalah /app
WORKDIR /app
# salin semua source code ke working directory
COPY . .
# tentukan environment ke production mode dan database host dengan nama item-db
ENV NODE_ENV=production DB_HOST=item-db
# install dependencies untuk production & build 
RUN npm install --production --unsafe-perm && npm run build
# ekspos port 8080
EXPOSE 8080
# jalankan perintah start
CMD [ "npm", "start" ]