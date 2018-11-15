require 'sinatra/base'
require './lib/game.rb'
require './lib/deck.rb'
require './lib/hand.rb'

class ShuffleDecider < Sinatra::Base
  # enable :sessions  
  before do
    @game = Game.instance
  end

  configure do
    set :public_folder, 'public'
  end

  get '/' do
    erb :index
  end

  post '/setup' do
    players = params[:players].to_i
    deal_size = params[:deal_size].to_i
    @game = Game.create(players, deal_size)
    @game.shuffle_pack
    @game.deal
    
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  #start the server if ruby file executed directly
  run! if app_file == $0

end
