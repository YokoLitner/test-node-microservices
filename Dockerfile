FROM node:18-alpine
 
WORKDIR /app
 
COPY . .
 
RUN yarn install
 
RUN yarn build
 
USER node
 
CMD ["yarn", "run", "start:prod"]