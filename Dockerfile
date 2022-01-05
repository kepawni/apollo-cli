FROM node:14-alpine
RUN npm install -g apollo
USER node
WORKDIR /home/node
CMD "apollo"
