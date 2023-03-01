FROM node:18-alpine

WORKDIR /app/

COPY /gateway/package*.json /gateway/yarn.lock /gateway/tsconfig.build.json /gateway/tsconfig.json /app/

COPY /gateway/src /app/src

RUN yarn && yarn build

EXPOSE 4000

CMD ["yarn", "start:dev"]