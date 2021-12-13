FROM alpine:3

WORKDIR /app

RUN apk --no-cache add nodejs yarn

COPY package.json yarn.lock ./
RUN yarn install

CMD yarn build
