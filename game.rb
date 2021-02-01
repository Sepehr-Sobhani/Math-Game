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

  def lives_checker
    if (player_1.lives == 0 || player_2.lives == 0)
      self.game_over
    else

    end

  end


  def start_game
    question = Question.new
    player_answer = question.ask_question(current_player)
  end


  def game_over
  puts "----------GAME IS OVER----------"
  puts "#{}"
  puts "GOOD BYE!"
  end

  def change_current_player
    @current_player == @player_1 ? @current_player = @player_2
  end
end
