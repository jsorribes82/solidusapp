FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs sqlite3 libsqlite3-dev
RUN mkdir /myapp
RUN mkdir /db
RUN /usr/bin/sqlite3 /db/development.sqlite3
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
CMD ["bundle", "exec", "rails", "server", "-p", "3000","-b", "0.0.0.0"]