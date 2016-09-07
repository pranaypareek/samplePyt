FROM ruby:2.3.1

RUN mkdir -p /app
WORKDIR /app

RUN gem install bundler

COPY Gemfile /app/
COPY Gemfile.lock /app/

RUN bundle install

COPY . /app

CMD bin/run-app
