require File.expand_path(File.dirname(__FILE__)) + '/init.rb'

port    = Global.server.port
branch  = Global.server.branch
command = "bundle exec gollum -p #{port} --allow-uploads dir --show-all --ref #{branch} --config config.rb &"

puts command
exec(command)
