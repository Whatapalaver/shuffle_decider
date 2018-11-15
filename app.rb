require 'sinatra/base'

class ShuffleDecider < Sinatra::Base

  configure do
    set :public_folder, 'public'
  end

  get '/' do
    erb :index
  end

  run! if __FILE__ == $0

end
