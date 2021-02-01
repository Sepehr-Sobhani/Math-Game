#class to create player instances
class Player

  attr_accessor :score
  attr_reader :name

  def initialize(name, score)
    @name = name
    @score = 3
  end
end


#to set and get currently playing player
class CurrentPlayer

  attr_accessor :current_player

  def initialize(player)
    @current_player = player
  end
end




class Match
  
  num_1 = self.random_number
  num_2 = self.random_number

  def initialize
    
  end

  def check_result (num_1 , num_2)
    num_1 == num_2 ? "Yes! you are correct" : "Seriously? No!"
  end

  
  @turn
  
  
    #generate a random number between 1 and 20
    def random_number
      rand(1..20)
    end
  
end

