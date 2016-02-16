
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
      puts "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
      puts "================"
    elsif user.downcase == "rock" && comp == "paper"
      puts "Player: ROCK vs Computer: PAPER ----- COMPUTER WINS"
      puts "================"
    elsif user.downcase == "rock" && comp == "rock"
      puts "Player: ROCK vs Computer: ROCK ----- TIE GAME"
      puts "================"
    elsif user.downcase == "scissors" && comp == "scissors"
        puts "Player: SCISSORS vs Computer: SCISSORS ----- TIE GAME"
        puts "================"
    elsif user.downcase == "scissors" && comp == "paper"
        puts "Player: SCISSORS vs Computer: PAPER ----- PLAYER WINS"
        puts "================"
    elsif user.downcase == "scissors" && comp == "rock"
        puts "Player: SCISSORS vs Computer: ROCK ----- COMPUTER WINS"
        puts "================"
    elsif user.downcase == "paper" && comp == "scissors"
        puts "Player: PAPER vs Computer: SCISSORS ----- COMPUTER WINS"
        puts "================"
    elsif user.downcase == "paper" && comp == "paper"
        puts "Player: PAPER vs Computer: PAPER ----- TIE GAME"
        puts "================"
    elsif user.downcase == "paper" && comp == "rock"
        puts "Player: PAPER vs Computer: ROCK ----- PLAYER WINS"
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
