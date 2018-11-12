require 'sinatra/base'

class ShuffleDecider < Sinatra::Base

  get '/' do
    erb :index
  end

end