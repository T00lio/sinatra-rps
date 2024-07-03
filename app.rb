require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do

  moves = ["rock", "paper", "scissors"]
  
  @computer_move = moves.sample

  if @computer_move == "rock"
    @outcome = "We tied!"
  elsif @computer_move == "paper"
    @outcome = "They won!"
  else
    @outcome = "won"
  end
erb (:rock )
end

get("/paper") do
 moves = ["rock", "paper", "scissors"]
 @computer_move = moves.sample

  if @computer_move == "rock"
    @outcome = "We won!"
  elsif @computer_move == "paper"
    @outcome = "We tied!"
  else
    @outcome = "won"
  end
  erb(:paper)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample
  
    if @computer_move == "rock"
      @outcome = "They won!"
    elsif @computer_move == "paper"
      @outcome = "We won!"
    else
      @outcome = "tied"
    end
    erb(:scissors)
end
