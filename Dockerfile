FROM node:20-slim

WORKDIR /usr/src/app


COPY . .

RUN apt-get update -y && apt-get install -y openssl

RUN npm install 

RUN npm install -g nest

RUN npm run prisma:generate -y


CMD ["npm", "run", "start:dev"]