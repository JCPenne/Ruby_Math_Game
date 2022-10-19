require './Player.rb'
require './Question.rb'



class Game
  attr_accessor :players, :question_counter, :player_counter, :current_player
  
  def initialize(player_count)
    @players = []

    @player_counter = 0
    
    populate_players(player_count)

    @current_player = @players[0]

    @active = true

    play_game

  end

  def populate_players(player_count)
    until @players.length() == player_count do
      @players.push(new_player())
    end
  end

  def new_player
    @player_counter += 1
    Player.new(@player_counter)
  end

  def increment_current_player
    current = @players.index(@current_player)
    if current != @players.length() - 1
      @current_player = @players[current + 1]
    else
      @current_player =@players[0]
    end
  end

  def new_question
    Question.new(@current_player.playerNum)
  end

  def play_game
    until @active == false do
      if new_question.response == false
        puts "#{@current_player.playerNum}: Seriously? Incorrect"

        @current_player.lose_a_life
      else
        puts "#{@current_player.playerNum}: YES! You are correct."
      end

      if @current_player.lives == 0
        @active = false
      else
        puts "#{@current_player.playerNum}: #{@players[0].lives}/3 vs #{@players[1].lives}/3"
        puts "\n"
        puts "----- NEW TURN -----"
        puts "\n"
  
        increment_current_player
      end
    end

    winner = {}
      
    if  @players[0].lives > @players[1].lives 
      winner = @players[0]
    else
      winner = @players[1]
    end

    puts "#{winner.playerNum} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
  end

end
