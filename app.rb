require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
  	"Hello"
    #erb(:index)
  end

  run! if app_file == $0
end
