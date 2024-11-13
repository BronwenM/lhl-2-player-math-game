# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20.
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

#Class
#Game - contains game state (questions, current_player, winner, players) and methods (start_game, game_over, answer_question, game)

#Objects
#Players
#Questions

#file imports
require './questions' #testing var = @questions_obj_array
require './players' #testing var = @players_obj_array
require './games'
require 'pp'

# players = [Player.new("Jane"), Player.new("Marianne"), Player.new("Cosette")]
new_game =  Game.new(@questions, @players, 4)
new_game.start_game
