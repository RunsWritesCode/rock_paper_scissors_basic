require 'sinatra'
require 'sinatra/reloader'
require_relative './models/rock_scissors_game'


get '/game/:hand1/:hand2' do

  # if params[:hand1] == "rock" && params[:hand2] == "scissors"
  #    "Rock blunts scissors"
  # elsif params[:hand1] == "scissors" && params[:hand2] == "rock"
  #    "Rock blunts scissors"
  # elsif params[:hand1] == "rock" && params[:hand2] == "paper"
  #    "Paper smothers rock"
  # elsif params[:hand1] == "scissors" && params[:hand2] == "paper"
  #    "Scissors cut paper"
  # elsif params[:hand1] == "paper" && params[:hand2] == "rock"
  #    "Paper smothers rock"
  # elsif params[:hand1] == "paper" && params[:hand2] == "scissors"
  #    "Scissors cut paper"
  # else
  #    "It's a draw"
  # end
result = RockScissorsGame.new(params[:hand1], params[:hand2])
@result = result.play
erb ( :game )


# # @game = result.game()
# return result.game()
# # erb( :result )
end


# rocks beats scissors
#
#
# get '/game/scissors/rock' do
#   return "Rock wins!"
# end
#
# get '/game/scissors/paper' do
#   return "Scissors win!"
# end
#
# get '/game/scissors/scissors' do
#   return "It's a draw!"
# end
#
# get '/game/paper/scissors' do
#   return "Scissors win!"
# end
#
# get '/game/paper/rock' do
#   return "Rock wins!"
# end
#
# get '/game/paper/paper' do
#   return "It's a draw!"
# end
#
# get '/game/rock/paper' do
#   return "It's a draw!"
# end
#
# get '/game/rock/scissors' do
#   return "It's a draw!"
# end
#
# get '/game/rock/rock' do
#   return "It's a draw!"
# end
#
# # do all routes
