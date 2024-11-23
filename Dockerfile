FROM node:alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install abort-controller handlebars http
RUN wget https://github.com/yt-dlp/yt-dlp/releases/download/2024.10.07/yt-dlp
EXPOSE 4338
CMD ["node", "./index.js"]
