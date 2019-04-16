FROM ruby:2.6.2-alpine3.9

ENV RACK_ENV production
ENV HTTP_PORT 80

WORKDIR /app
COPY . /app

RUN apk add --update \
  build-base \
  && rm -rf /var/cache/apk/*

RUN bundle install --clean --no-cache --deployment

EXPOSE $HTTP_PORT

CMD ["./bin/docker-entrypoint.sh"]
