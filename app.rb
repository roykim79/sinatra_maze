require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/maze'
require 'pry'

get '/' do
  erb(:landing)
end

get '/maze' do
  @maze = Maze.new()
  if params[:room]
    @maze.current_room = params.fetch('room').to_i
  end
  erb(:maze)
end
