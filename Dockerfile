FROM node:18-alpine

WORKDIR /app/

COPY package*.json yarn.lock tsconfig.build.json tsconfig.json /app/

COPY src /app/src

RUN yarn && yarn build

CMD ["yarn", "start:dev"]