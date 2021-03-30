class Game
	attr_accessor :current_player
	def initialize
		@current_player = 1
	end

	def change_player
		current_player == 1 ? (current_player = 2) : (current_player = 1)
	end

	def play_round(question, answer)
		puts "Player #{current_player}: #{question}"
		player_answer = gets.chomp
		if player_answer == answer.to_s
			puts "Player #{current_player}: YES! You are correct."
		else
			puts "Player #{current_player}: Seriously? No!"
		end
	end

	def print_outcome(p1_lives, p2_lives, winner)
		if winner
			puts "Player #{winner} wins with a score of #{winner == 1 ? p1_lives : p2_lives}"
			puts "----- GAME OVER -----"
			puts "Good bye!"
		else
			puts "P1: #{p1_lives} vs P2: #{p2_lives}"
			puts "----- NEW TURN -----"
		end
	end
end


game = Game.new
puts game.current_player
game.change_player
puts game.current_player
game.play_round("3 + 4", 7)
game.print_outcome("1/3", "2/3", nil)