FROM ruby

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sqlite3 build-essential nodejs libpq-dev
RUN gem update && gem install rails && gem install bundler
RUN mkdir /opt/app

ONBUILD WORKDIR /opt/app/
ONBUILD ADD . /opt/app

ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN db:migrate
ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed
