
class Game
  attr_accessor :player_one_choice, :computer

  def initialize
    self.player_one_choice = player_one_choice
    self.computer = computer
  end

  def play
    choices = ["rock", "paper", "scissors"]
    # puts "Type 'quit' to quit."
    # puts "Rock, paper or scissors?"
    user = choices.sample
    # puts "You chose #{user}!"
    comp = choices.sample
    # puts "The computer chose #{comp}!"
    data = []
    rock = "rock"
    paper = "paper"
    scissors = "scissors"
    tie = "tie"
    games_played = 0
    until games_played > 999
      if user.downcase == "rock" && comp == "scissors"
        data << rock
      elsif user.downcase == "rock" && comp == "paper"
        data << paper
      elsif user.downcase == "rock" && comp == "rock"
        data << tie
      elsif user.downcase == "scissors" && comp == "scissors"
        data << tie
      elsif user.downcase == "scissors" && comp == "paper"
        data << scissors
      elsif user.downcase == "scissors" && comp == "rock"
        data << rock
      elsif user.downcase == "paper" && comp == "scissors"
        data << scissors
      elsif user.downcase == "paper" && comp == "paper"
        data << tie
      elsif user.downcase == "paper" && comp == "rock"
        data << paper
      end
      games_played += 1
      user = choices.sample
      comp = choices.sample
    end
    breakdown = data.reduce(Hash.new(0)) { |a, b| a[b] += 1; a }
    puts "==========="
    puts "#{data.count} games simulated."
    puts breakdown
    puts "==========="
  end
end

game = Game.new
game.play
