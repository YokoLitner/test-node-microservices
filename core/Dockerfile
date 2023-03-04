FROM node:18-alpine

WORKDIR /core/

COPY /core/package*.json /core/yarn.lock /core/tsconfig.build.json /core/tsconfig.json ./

RUN yarn && yarn build

COPY /core/src/ ./src/

EXPOSE 3000

CMD ["yarn", "start:dev"]