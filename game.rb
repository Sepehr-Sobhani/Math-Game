require "./player"
require "./question"


#class to create game instances
class Game

  attr_accessor :current_player
  attr_reader :player_1, :player_2

  def initialize (p1, p2)
    @player_1 = Player.new(p1)
    @player_2 = Player.new(p2)
    @current_player = @player_1
  end

  #check lives for each player and decide to continue or finish the game
  def lives_checker
    if (player_1.lives == 0 || player_2.lives == 0)
      self.game_over
    else
      puts "------NEW ROUND------"
      self.start_game
    end
  end



  #method to run the game every time
  def start_game
    question = Question.new
    player_answer = question.ask_question(current_player)
    answer_check = question.check_answer(player_answer)
    
    
    if !answer_check
      current_player.lose_life
      change_current_player
      puts "Seriously?! You lost a life!!"
    else
      puts "Absolutely Correct!"
    end

    puts "#{player_1.name} has #{player_1.lives} lives"
    puts "#{player_2.name} has #{player_2.lives} lives"

    self.lives_checker
  end

  #method to change the current player
  def change_current_player
    current_player == player_1 ? @current_player = @player_2 : @current_player = @player_1
  end

  #method to finish the game
  def game_over
    puts "----------GAME IS OVER----------"
    winner = player_1.lives == 0 ? player_2 : player_1 
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "GOOD BYE!"
  end

end
