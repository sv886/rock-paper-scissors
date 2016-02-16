
class Game
  attr_accessor :player_one_choice, :computer

  def initialize
    self.player_one_choice = player_one_choice
    self.computer = computer
  end

  def play
    choices = ["rock", "paper", "scissors"]
    puts "Type 'quit' to quit."
    puts "Rock, paper or scissors?"
    user = gets.chomp
    puts "You chose #{user}!"
    comp = choices.sample
    puts "The computer chose #{comp}!"
  until user.downcase == "quit"
    if user.downcase == "rock" && comp == "scissors"
      puts "You win!"
      puts "================"
    elsif user.downcase == "rock" && comp == "paper"
      puts "You lose!"
      puts "================"
    elsif user.downcase == "rock" && comp == "rock"
      puts "Tie game!"
      puts "================"
    elsif user.downcase == "scissors" && comp == "scissors"
        puts "Tie game!"
        puts "================"
    elsif user.downcase == "scissors" && comp == "paper"
        puts "You win!"
        puts "================"
    elsif user.downcase == "scissors" && comp == "rock"
        puts "You lose!"
        puts "================"
    elsif user.downcase == "paper" && comp == "scissors"
        puts "You lose!"
        puts "================"
    elsif user.downcase == "paper" && comp == "paper"
        puts "Tie game!"
        puts "================"
    elsif user.downcase == "paper" && comp == "rock"
        puts "You win!"
        puts "================"
    elsif user.downcase != "rock" || user.downcase != "paper" || user.downcase != "scissors"
        puts "Not a valid play. Computer wins by default!"
        puts "================"
    end
    puts "Type 'quit' to quit."
    puts "Rock, paper or scissors?"
    user = gets.chomp
    puts "You chose #{user}!"
    comp = choices.sample
    puts "The computer chose #{comp}!"
    end
  end
end

game = Game.new
game.play
