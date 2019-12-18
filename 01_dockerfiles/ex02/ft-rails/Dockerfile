FROM ruby

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sqlite3 build-essential nodejs libpq-dev apt-utils
RUN gem update && gem install rails && gem install bundler
RUN apt-get install make -y
RUN mkdir /opt/app

ONBUILD WORKDIR /opt/app/
ONBUILD ADD . /opt/app

ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN bundle exec rake db:migrate
ONBUILD RUN bundle exec rake db:setup
ONBUILD RUN bundle exec rake db:seed
