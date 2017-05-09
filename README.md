# overview
my gollum custom

# usage

## install
bundle install<br />
git checkout -b BRANCH<br />

## setting
cp global/auth.yml{.example,}<br />
vi global/auth.yml<br />
cp global/server.yml{.example,}<br />
vi global/server.yml<br />

## job start
* bundle exec ruby script/start.rb

## backup
* bundle exec ruby script/backup.rb
* export DIR=/path/to/backup/; script/backup.sh
