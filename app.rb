require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/allergies')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @score = params.fetch('score').to_i
  @result = @score.allergies().join(", ")
  erb(:results)
end
