class Game
  attr_writer :life_points
  
  @game_on = false

  def initialize
    @player1 
    @player2 
    @life_points = {}

    puts "want to play a game? (y) for yes (n) for no"
    @play = gets.chomp
    if @play == "y"
      puts "so whats your name player 1?"
      @player1 = gets.chomp
      puts "what a dumb name, you must be some dumb sack of shit, you must be a real rock in the pond, sunk and stuck with a name like #{@player1}... dumb sack a shit"
      puts "whats your name player 2?"
      @player2 = gets.chomp
      puts "wonderful!"
      puts "Here have some life points!"
      @life_points[@player1] = 3
      @life_points[@player2] = 3
      puts "#{@player1}:#{@life_points[@player1]} vs #{@player2}:#{@life_points[@player2]}" 
      @game_on = true
    else 
      return puts "see ya later!"
    end
  end

 

  @player = @player1

end  

lets_play = Game.new
