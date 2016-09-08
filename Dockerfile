FROM ruby:2.3.1

RUN mkdir -p /app
WORKDIR /app

RUN gem install bundler

COPY Gemfile /app/

RUN bundle install

COPY /Gemfile /app

CMD bin/run-app
