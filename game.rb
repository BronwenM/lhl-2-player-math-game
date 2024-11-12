# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20.
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

#Classes
#Player - contains player state (score, name, player #) methods (update_score)
#Questions - contains question data (question, answer kv pair)
#Game - contains game state (questions, current_player, winner, players) and methods (start_game, game_over, answer_question, game)

class Game
  def initialize(questions, players, winning_score)
    @questions = questions
    @players = players
    @winning_score = winning_score
    @winner = ''
    @question_asked_count = 0
    @current_player = ''
  end

  def pick_starting_player
    #pick a random player from the players arr
  end

  def ask_question
    #ask a question, if the answer is right, add 1 to the player's score, otherwise skip to next player(? could just fail and ask new q to next player. but need more questions in that case)
    #add 1 to question_asked_count
  end

  def start_game
    pick_starting_player

    #start while loop (while question_asked_count <= questions.length || no player score above winning_score (?)
    #ask question if right add 1 to current_player otherwise ask next player
    #(no one answers or answers correct) go to next question
  end

  def game_over
    #print out "Game over!" winner, and everyone else's score
  end
end