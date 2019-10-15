FROM node:latest

COPY package*.json ./
RUN npm install

COPY . .

ENV PUBLIC_URL https://microfend-content.herokuapp.com/

RUN npm run build

CMD PORT=$PORT npm run start