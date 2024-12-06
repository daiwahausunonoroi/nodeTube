FROM node:alpine
WORKDIR /app/
COPY . /app/
RUN npm install abort-controller handlebars http
EXPOSE 4338
CMD ["node", "./index.js"]
