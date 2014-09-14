# labmin
#
# VERSION               0.0.1

FROM zaiste/ruby
MAINTAINER Evan Gray <evan.gray@rackspace.com>

RUN 	apt-get update && apt-get install -y --fix-missing git nodejs mysql-client libmysqlclient-dev libsqlite3-dev libcurl4-openssl-dev libpcre3-dev curl wget libxslt-dev libxml2-dev build-essential
RUN	    gem install bundle


ENTRYPOINT 	bundle config --global jobs 12 && git clone https://github.com/evanscottgray/labmin && cd labmin && bundle install && bundle exec rake db:migrate && passenger start

EXPOSE	3000
