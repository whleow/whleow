FROM node:16

# BP - Node user folder
WORKDIR /home/node/app

COPY ./package*.json ./

# BP - Production install
RUN npm ci --only=production

COPY ./ .

#COPY ./.env .

EXPOSE 3000

# BP - Run default as the node user, not root
USER node

CMD [ "node", "test.js" ]