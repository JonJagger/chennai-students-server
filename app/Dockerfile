FROM  cyberdojo/sinatra
LABEL maintainer=jon@jaggersoft.com

RUN apk update
RUN apk upgrade
RUN gem install bundler
COPY . /app
RUN bundle install
ARG PORT
EXPOSE ${PORT}
ENV PORT=${PORT}
CMD [ "./up.sh" ]
