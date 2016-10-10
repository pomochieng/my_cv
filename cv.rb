require 'sinatra'
require 'vitae'

get('/vitae') do
  erb :index
end

get('/vitae/form') do
  erb :form
end

post('/vitae/create') do
  @vitae = Vitae.new
  @vitae.email = params['email']
  @vitae.content = params['content']
end


