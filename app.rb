require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'BEEP BOOP I AM A FILE :)'
end

get '/secret' do
  " this page is minty fresh"
end

get '/random-cat' do
  @name = ['felix','sylvester'].sample()
  erb(:index)
end

post '/named-cat' do
  p 'HERE ARE THE PARAMS', params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end
