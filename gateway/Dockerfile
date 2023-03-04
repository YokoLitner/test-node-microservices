FROM node:18-alpine

WORKDIR /gateway/

COPY /gateway/package*.json /gateway/yarn.lock /gateway/tsconfig.build.json /gateway/tsconfig.json ./

RUN yarn && yarn build

COPY /gateway/src/ ./src/

EXPOSE 4000

CMD ["yarn", "start:dev"]