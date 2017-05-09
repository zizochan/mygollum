require File.expand_path(File.dirname(__FILE__)) + '/script/init.rb'

# authentication
module Precious
  class App < Sinatra::Base
    use Rack::Auth::Basic, "Restricted Area" do |username, password|
      [username, password] == [Global.auth.username, Global.auth.password]
    end
  end
end

wiki_options = {
  :css => true,
}
Precious::App.set(:wiki_options, wiki_options)
