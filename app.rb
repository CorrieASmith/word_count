require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  complete_sentence = params.fetch('word')
  erb(:word_count)
end
