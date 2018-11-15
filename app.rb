require 'sinatra/base'

class ShuffleDecider < Sinatra::Base

  # set :root, File.dirname(__FILE__)

  configure do
    set :public_folder, 'public'
  end

  get '/' do
    erb :index
  end

end
