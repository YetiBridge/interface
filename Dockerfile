# pull the official base image
FROM node:alpine
# set working direction
WORKDIR /
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install application dependencies
COPY package.json ./
RUN npm install yarn
RUN yarn --force
# add app
COPY . ./
# start app

EXPOSE 3001:3000
CMD ["yarn", "start"]
