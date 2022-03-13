# in app.rb

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @hitpoints_2 = @game.player_2.hitpoints
    @hitpoints_1 = @game.player_1.hitpoints
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    @game.switch_turns
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end