require 'pry'
require 'global'

# initialize global
Global.configure do |config|
  config.environment      = :production
  config.config_directory = File.expand_path(File.dirname(__FILE__)) + '/../global'
end

