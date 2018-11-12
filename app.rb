require 'sinatra/base'

class MyRackApp < Sinatra::Base

  get '/' do
    erb :index
  end

end