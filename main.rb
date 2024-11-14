# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20.
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

#Class
#Game - contains game state (questions, current_player, winner, players) and methods (pick_starting_player, get_next_player, ask_question, find_winning_player, start_game, game_over)
#QuestionBank - contains state (num questions, question_bank) and methods (initialize with num questions, create_question_bank)
#Players contains state (lives, )


#file imports
require './questions' #testing var = @questions_obj_array
require './players' #testing var = @players_obj_array
require './games'
require 'pp'

new_question_bank = QuestionBank.new(5)

# players = [Player.new("Jane"), Player.new("Marianne"), Player.new("Cosette")]
jane = Player.new("Jane")
jane.lose_life
jane.lose_life
jane.lose_life
jane.lose_life
# new_game =  Game.new(@questions, @players, 4)
# new_game.start_game
