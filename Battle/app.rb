require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
 #keeps memory of user across multiple pages

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    erb :play
  end

  post '/hit' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :hit
  end

  run! if app_file == $0
end
