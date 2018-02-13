require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get ('/') do
  erb(:input)
end


post ('/output') do
  @answer1 = params.fetch("riddle1").downcase
  @answer2 = params.fetch("riddle2").downcase
  sphinx = Sphinx.new(@answer1, @answer2)
  if sphinx.riddle? == true
    @resultstring = "YOU'RE A LOSER (but you got it right)"
  elsif sphinx.riddle? == false
    @resultstring = "YOU'RE A LOSER"
  end
  erb(:output)
end
