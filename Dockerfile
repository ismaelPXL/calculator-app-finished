# FROM node:14
# WORKDIR /usr/src/app

# COPY . .
# RUN npm install

# EXPOSE 8080

# CMD ["npm","start"]

FROM node:18

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 5000

CMD [ "npm","start" ]
