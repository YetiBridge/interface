# pull the official base image
FROM node:alpine
# set working direction
WORKDIR /
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install application dependencies
COPY package.json ./
RUN apk update
RUN apk upgrade
RUN apk add git 
RUN npm install -g npm@7.20.0 
RUN npm install --force
RUN npm install react-scripts --save 
# add app
COPY . ./
# start app

EXPOSE 3001:3000
CMD ["npm", "start"]
