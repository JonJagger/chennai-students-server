FROM cyberdojo/sinatra
LABEL maintainer=jon@jaggersoft.com

RUN apk update \
 && apk upgrade \
 && apk add git \
 && rm -rf /var/cache/apk/*

RUN git clone https://github.com/JonJagger/chennai-students-server.git
WORKDIR chennai-students-server
RUN gem install bundler
RUN bundle install
EXPOSE 4567