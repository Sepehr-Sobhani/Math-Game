require "./game"


puts "Math GAME"
puts "Player 1 name?"
print ">"
player_1 = $stdin.gets.chomp

puts "Player 2 name?"
print ">"
player_2 = $stdin.gets.chomp


new_game = Game.new(player_1, player_2)


new_game.start_game




