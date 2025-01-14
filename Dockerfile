FROM node:alpine

RUN mkdir /app

WORKDIR /app

COPY ./ ./

RUN npm i

EXPOSE 3000

CMD npm run start 