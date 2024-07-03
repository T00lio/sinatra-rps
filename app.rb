require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do

  moves = ["rock", "paper", "scissors"]
  
  @computer_move = moves.sample

  if @computer_move == "rock"
    @outcome = "We tied!"
  elsif @computer_move == "paper"
    @outcome = "They won!"
  else
    @outcome = "We won!"
  end
erb (:rock )
end

get("/paper") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/scissors") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
