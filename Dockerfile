FROM node:20-slim

WORKDIR /usr/src/app


COPY . .
ENV DATABASE_URL mongodb://root:root@db:27017/nest?authSource=admin
RUN apt-get update -y && apt-get install openssl -y 

RUN npm install && npx prisma generate 
RUN npm install -g @nestjs/cli


CMD ["tail", "-f", "/dev/null"]