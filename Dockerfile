# base image
FROM node:12.2.0-alpine

# install and cache app dependencies
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent

EXPOSE 3000
CMD ["npm", "start"]
