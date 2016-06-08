require 'sinatra/base'



class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:player_one_name] = params[:player_one_name]
    session[:player_two_name] = params[:player_two_name]
    redirect('/play')
  end

  get '/play' do
    @player1 = session[:player_one_name]
    @player2 = session[:player_two_name]
    erb(:play)
  end

  run! if app_file == $0
end
