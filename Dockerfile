# base image
FROM node:12.2.0-alpine

# set working directory
WORKDIR /app
COPY package.json package-lock.json ./

# install and cache app dependencies
RUN npm install --silent
RUN npm install serve -g --silent

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["serve", "-p", "3000", "-s", "./build"]
