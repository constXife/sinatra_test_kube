FROM ruby:3.0.1-alpine3.13

ENV RACK_ENV production
ENV HTTP_PORT 80

WORKDIR /app
COPY . /app

RUN apk add --update \
  build-base \
  && rm -rf /var/cache/apk/*

RUN bundle install

EXPOSE $HTTP_PORT

CMD ["./bin/docker-entrypoint.sh"]
