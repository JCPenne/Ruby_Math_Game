class Player
  attr_accessor :name, :lives, :playerNum

  def initialize(name,num)
    self.name = name
    self.lives = 3
    self.playerNum = num
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