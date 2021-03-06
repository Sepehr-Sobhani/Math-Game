#class to create question instances
class Question

  attr_reader :num_1 , :num_2

  #initializing random numbers between 1 and 20
  def initialize
    @num_1 = rand(20)
    @num_2 = rand(20)
  end


  #print the question and return player answer
  def ask_question(current_player)
    puts "#{current_player.name}: What does #{num_1} plus #{num_2} equal?"
    print ">"
    player_answer = gets.chomp.to_i
  end

  # return true if the answer is true
  def check_answer(player_answer)
    correct_answer = num_1 + num_2
    correct_answer == player_answer
  end
end