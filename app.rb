require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player1 = Player.new(params[:player_one_name])
    $player2 = Player.new(params[:player_two_name])
    redirect('/play')
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end



  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:attack)
  end

  run! if app_file == $0
end
