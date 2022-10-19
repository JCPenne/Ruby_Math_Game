require './Player.rb'
require './Question.rb'



class Game
  attr_accessor :players, :question_counter, :player_counter, :current_player
  
  def initialize(player_count)
    @players = []
    @player_counter = 0
    
    @question_counter = 0
    
    populate_players(player_count)

    @current_player = @players[0]

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
    @question_counter += 1
    Question.new(@question_counter)
  end



end
