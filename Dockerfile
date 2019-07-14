# base image
FROM node:12.2.0-alpine

# set working directory
WORKDIR /app
COPY package.json package-lock.json ./

# install and cache app dependencies
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent

COPY . .

EXPOSE 3000

CMD ["ls"]
CMD ["npm", "start"]
