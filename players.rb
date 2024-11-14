class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3

    puts "Creating a new player called #{name}"
  end

  def lose_life
    self.lives -= 1
    puts "Player #{name} now has #{"❤️" * lives}  #{lives} lives left"
  end
end

@players = [
  {
    name: "Player 1",
    score: 0
  },
  {
    name: "Player 2",
    score: 0
  },
  {
    name: "Player 3",
    score: 0
  },
  {
    name: "Player 4",
    score: 0
  },
  {
    name: "Player 5",
    score: 0
  }
]