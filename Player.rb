class Player
  attr_accessor :name, :lives, :playerNum

  def initialize(num)
    @lives = 3
    @playerNum = "Player#{num}"
  end

  def lose_a_life
    self.lives -= 1

    if lives == 0
      false
    else
      true
    end
  end

end