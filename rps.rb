
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
    player_one_choice = gets.chomp
    puts "You chose #{player_one_choice}!"
    computer = choices.sample
    puts "The computer chose #{computer}!"
  until player_one_choice.downcase == "quit"
    if player_one_choice.downcase == "rock" && computer == "scissors"
      puts "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
      puts "================"
    elsif player_one_choice.downcase == "rock" && computer == "paper"
      puts "Player: ROCK vs Computer: PAPER ----- COMPUTER WINS"
      puts "================"
    elsif player_one_choice.downcase == "rock" && computer == "rock"
      puts "Player: ROCK vs Computer: ROCK ----- TIE GAME"
      puts "================"
    elsif player_one_choice.downcase == "scissors" && computer == "scissors"
        puts "Player: SCISSORS vs Computer: SCISSORS ----- TIE GAME"
        puts "================"
    elsif player_one_choice.downcase == "scissors" && computer == "paper"
        puts "Player: SCISSORS vs Computer: PAPER ----- PLAYER WINS"
        puts "================"
    elsif player_one_choice.downcase == "scissors" && computer == "rock"
        puts "Player: SCISSORS vs Computer: ROCK ----- COMPUTER WINS"
        puts "================"
    elsif player_one_choice.downcase == "paper" && computer == "scissors"
        puts "Player: PAPER vs Computer: SCISSORS ----- COMPUTER WINS"
        puts "================"
    elsif player_one_choice.downcase == "paper" && computer == "paper"
        puts "Player: PAPER vs Computer: PAPER ----- TIE GAME"
        puts "================"
    elsif player_one_choice.downcase == "paper" && computer == "rock"
        puts "Player: PAPER vs Computer: ROCK ----- PLAYER WINS"
        puts "================"
    elsif player_one_choice.downcase != "rock" || player_one_choice.downcase != "paper" || player_one_choice.downcase != "scissors"
        puts "Not a valid play. Computer wins by default!"
        puts "================"
    end
    puts "Type 'quit' to quit."
    puts "Rock, paper or scissors?"
    player_one_choice = gets.chomp
    puts "You chose #{player_one_choice}!"
    computer = choices.sample
    puts "The computer chose #{computer}!"
    end
  end
end

game = Game.new
game.play
