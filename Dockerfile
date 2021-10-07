# syntax=docker/dockerfile:1
FROM node:10

ENV SECRET_WORD "TwelveFactor"

COPY package.json package-lock.json* ./

RUN npm install --production

COPY ./ ./

EXPOSE 3000

CMD ["node", "src/000.js"]