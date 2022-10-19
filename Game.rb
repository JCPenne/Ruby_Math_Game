require './Player.rb'
require './Question.rb'



class Game
  
  @@question_counter = 0
  @@player_counter = 0

  def initialize
  end

  def new_player(name)
    @@player_counter += 1
    Player.new(name, @@player_counter)
  end

  def new_question
    @@question_counter += 1
    Question.new(@@question_counter)
  end

  def check_response
  end



end
