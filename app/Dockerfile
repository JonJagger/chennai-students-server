FROM  alpine:3.7
LABEL maintainer=jon@jaggersoft.com

RUN apk --update --no-cache add \
    bash \
    ruby-bundler \
    ruby-dev

ARG  FACES_BOOK_HOME

COPY Gemfile ${FACES_BOOK_HOME}/
WORKDIR ${FACES_BOOK_HOME}

RUN apk --update add --virtual build-dependencies build-base \
  && bundle config --global silence_root_warning 1 \
  && bundle install \
  && gem clean \
  && apk del build-dependencies build-base \
  && rm -vrf /var/cache/apk/*

COPY . ${FACES_BOOK_HOME}

ARG PORT
EXPOSE ${PORT}
ENV PORT=${PORT}

CMD [ "./up.sh" ]
