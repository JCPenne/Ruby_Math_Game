require './Player.rb'
require './Question.rb'



class Game
  attr_accessor :players, :question_counter, :player_counter
  
  def initialize(player_count)
    @players = []
    @player_counter = 0

    @question_counter = 0

    populate_players(player_count)
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

  def new_question
    @question_counter += 1
    Question.new(@question_counter)
  end

  def check_response
  end



end
