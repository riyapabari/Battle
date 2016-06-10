require 'sinatra/base'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player_one_name])
    player2 = Player.new(params[:player_two_name])
    @game = Game.create(player1, player2)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.opponent)
    redirect('/switch')
  end

  get '/switch' do
    @game.switch_player
    redirect('/play')
  end

  run! if app_file == $0
end
