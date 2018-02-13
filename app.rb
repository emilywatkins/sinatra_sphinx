require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get ('/') do
  erb(:input)
end
