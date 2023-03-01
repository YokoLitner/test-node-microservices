FROM node:18-alpine

WORKDIR /app/

COPY /core/package*.json /core/yarn.lock /core/tsconfig.build.json /core/tsconfig.json /app/

COPY /core/src /app/src

RUN yarn && yarn build

EXPOSE 3000

CMD ["yarn", "start:dev"]