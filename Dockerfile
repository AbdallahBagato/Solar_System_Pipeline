FROM node:current-alpine3.20

ENV MONGO_URI=Mongo-URL
ENV MONGO_USERNAME=Mongo-user

WORKDIR /app

COPY package*.json .
RUN npm install 

COPY . .

ENTRYPOINT ["node"]
CMD ["app.js"]
EXPOSE 3000
