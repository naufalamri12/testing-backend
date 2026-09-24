FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install sequelize-cli -g

COPY . .

EXPOSE 5000

CMD ["npm", "start"]
