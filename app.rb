require('sinatra')
require('sinatra/activerecord')
require('sinatra/reloader')
require('./lib/survey')
require('./lib/question')
require('pg')
require('pry')

also_reload('lib/**/*.rb')

get('/') do
  @surveys = Survey.all()
  erb(:index)
end

get('/survey/add') do
  @survey = nil
  @questions = Question.all()
  erb(:survey_add)
end

post('/survey/add') do
  name = params.fetch('name')
  @survey = Survey.create({:name => name})
  @questions = Question.all()
  erb(:survey_add)
end

post('/survey/question/add') do
  survey_id = params.fetch('survey_id').to_i
  @survey = Survey.find(survey_id)
  description = params.fetch('question')
  Question.create({:description => description, :survey_id => @survey.id})
  @questions = Question.all()
  erb(:survey_add)
end
