require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/attack'

class Battle < Sinatra::Base
  #
  # enable :sessions
  # set :session_secret, 'Secret Session'


  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
    end

  get "/play" do
    @game = $game
    erb :play
  end

  get "/attack" do
    @game = $game
    Attack.run(@game.opponent_of(@game.current_turn))
    erb :attack
  end

  post "/switch_turns" do
    $game.switch_turn
    redirect('/play')
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
