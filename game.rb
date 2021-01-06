require './users.rb'
require './questions.rb' 
class Game
  def initialize
    @player1 
    @player2 
  end

  def setup
    puts "whats your name player 1"
    name1 = gets.chomp
    @player1 = User.new(name1)
    puts "hello #{@player1.name}"
    puts "whats your name player 2"
    name2 = gets.chomp
    @player2 = User.new(name2)
    puts "hello #{@player2.name}"
    game_play
  end

  def game_play
    @turn = 1
    @player

    while @player1.life_points > 0 || @player2.life_points > 0
      if @turn.even?
        @player = @player2
      else 
        @player = @player1
      end

      question_maker
      puts "its #{@player.name}s turn!!!!!"
      puts "#{@player.name}... #{@question}"
      @attempt = gets.chomp

      if @attempt == @awnser
        puts "you're damb right it is!"
        @turn += 1
      else
        puts "no..."
        @player.life_points -= 1
        puts "#{@player.name} has #{@player.life_points} life points left..."
        @turn += 1
      end
    end
    puts "#{@player.name}... .  .  . you dead"
    
  end
end  

lets_play = Game.new
lets_play.setup


