FROM ruby:2.3.1

RUN mkdir -p /app
WORKDIR /app

RUN gem install bundler

COPY Gemfile /app/

COPY . /app

RUN bundle install

CMD bin/run-app
