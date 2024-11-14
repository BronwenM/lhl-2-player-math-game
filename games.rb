#Main game control
class Game
  attr_accessor :winning_score, :winner, :current_player
  attr_reader :questions, :players, :winning_score

  def initialize(questions, players, winning_score) #TESTED: SUCCESS
    puts "Creating a new game with #{players.length} players who will be asked #{questions.length} questions. They need #{winning_score} points to win"

    @questions = questions
    @players = players
    @winning_score = winning_score
    @winner = ''
    @question_asked_count = 0
    @current_player = pick_starting_player
    # puts "Starting player is #{current_player[:name]}"

  end

  def pick_starting_player #TESTED: SUCCESS
    self.current_player = players.sample
  end

  #selects the next player in the list, if at the end of the list, loop back around to the start
  def get_next_player #TESTED: SUCCESS
    player_index = self.players.find_index self.current_player

    if player_index < players.length - 1
      self.current_player = players[player_index + 1]
    elsif player_index == players.length - 1
      self.current_player = players[0]
    end
  end

  #ask a question, if the answer is right, add 1 to the player's score, otherwise skip to next player
  def ask_question(question) #TESTED: SUCCESS
    question_resolved = false
    answer_count = 0

    while !question_resolved && answer_count <= players.length - 1 do
      puts "#{current_player[:name]}: #{question[:question]}"
      print "> "
      player_answer = gets.chomp

      if player_answer.to_s == question[:answer].to_s
        self.current_player[:score] += 1
        question_resolved = true
        puts "#{current_player[:name]} correctly answered #{question[:question]} Now they have #{current_player[:score]} point#{current_player[:score] == 1 ? "": "s"}"
        get_next_player
      else
        answer_count += 1
        get_next_player unless answer_count == players.length
        puts "You got it wrong! Now its #{current_player[:name]}'s turn"
      end
    end
    
    puts "No one got it right! The answer was #{question[:answer]}" unless question_resolved

  end

  def find_winning_player
    players.find { |player| player[:score] >= winning_score}
  end


  #start while loop (while question_asked_count <= questions.length && no player score above winning_score
  def start_game #TESTED: SUCCESS
    puts "Starting player is #{current_player[:name]}"
    question_asked_count = 0

    while question_asked_count <= questions.length - 1 do
      puts "\n====================== ROUND #{question_asked_count + 1} ======================"
      ask_question(questions[question_asked_count])
      
      if find_winning_player
        game_over
      end

      question_asked_count += 1
    end

    game_over
  end

  def game_over #TESTED: SUCCESS
    puts "\n\n====================== GAME OVER ======================\n\n"
    self.players.sort! { |a, b| b[:score] <=> a[:score]}
    puts players.map.with_index {|player, index| "\t\t#{index + 1 == 1 ? "🥇 1st" : (index + 1 == 2 ? "🥈 2nd" : (index + 1 == 3 ? "🥉 3rd" : "#{index + 1}."))}  #{player[:name]} - #{player[:score]} pts #{index + 1 == 3 ? "\n\n": ""}"}
    puts "\n======================================================="
    exit(0)
  end
end