#class to create player instances
class Player

  attr_accessor :lives
  attr_reader :name

  #initializing player name and lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    self.lives -= 1
  end
  
end
