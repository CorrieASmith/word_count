require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  my_word = params.fetch('my_word')
  #@my_word = String.new(my_word)
  erb(:word_count)
end
