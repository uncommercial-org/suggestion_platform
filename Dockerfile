FROM ruby:3.1.2-alpine3.16

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN apk add --no-cache gcompat tzdata postgresql-libs && \
    apk add --update-cache --no-cache --virtual .build-deps g++ make postgresql-dev \
    && bundle install --jobs 4 --retry 3 \
    && rm -rf /usr/local/bundle/cache/*.gem \
    && find /usr/local/bundle/gems/ -name "*.c" -delete \
    && find /usr/local/bundle/gems/ -name "*.o" -delete \
    && apk --purge del .build-deps

COPY . .

CMD ["bin/rails", "server", "--binding=0.0.0.0"]
