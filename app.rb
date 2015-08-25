require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
require('./lib/survey')
require('./lib/question')
require('pg')

also_reload('lib/**/*.rb')

get('/') do
  @surveys = Survey.all()
  erb(:index)
end
