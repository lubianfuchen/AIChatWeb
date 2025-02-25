
# 需要先在本地执行yarn install && yarn build

# docker build -t lubianfuchen/aichat-web:0.8 ../AIChatWeb
# docker push lubianfuchen/aichat-web:0.8
# docker tag lubianfuchen/aichat-web:0.8 lubianfuchen/aichat-web:latest
# docker push lubianfuchen/aichat-web:latest

FROM node:18-alpine

WORKDIR /app

COPY ./public ./public
COPY ./node_modules ./node_modules
COPY ./.next/standalone ./
COPY ./.next/static ./.next/static
COPY ./.next/server ./.next/server

ENV BASE_URL=http://aichat-admin:8080

EXPOSE 3000

CMD node /app/server.js;
