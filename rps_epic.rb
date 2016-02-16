
class Game
  attr_accessor :player_one_choice, :computer

  def initialize
    self.player_one_choice = player_one_choice
    self.computer = computer
  end

  def play
    choices = ["rock", "paper", "scissors"]
    player_one_choice = choices.sample
    computer = choices.sample
    data = []
    rock = "rock"
    paper = "paper"
    scissors = "scissors"
    tie = "tie"
    games_played = 0
    until games_played > 999
      if player_one_choice.downcase == "rock" && computer == "scissors"
        data << rock
      elsif player_one_choice.downcase == "rock" && computer == "paper"
        data << paper
      elsif player_one_choice.downcase == "rock" && computer == "rock"
        data << tie
      elsif player_one_choice.downcase == "scissors" && computer == "scissors"
        data << tie
      elsif player_one_choice.downcase == "scissors" && computer == "paper"
        data << scissors
      elsif player_one_choice.downcase == "scissors" && computer == "rock"
        data << rock
      elsif player_one_choice.downcase == "paper" && computer == "scissors"
        data << scissors
      elsif player_one_choice.downcase == "paper" && computer == "paper"
        data << tie
      elsif player_one_choice.downcase == "paper" && computer == "rock"
        data << paper
      end
      games_played += 1
      player_one_choice = choices.sample
      computer = choices.sample
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
