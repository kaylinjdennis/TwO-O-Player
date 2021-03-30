class Game
	attr_accessor :current_player, :winner, :correct_answer
	def initialize
		@current_player = 1
		@winner = nil
		@correct_answer = true
	end

	def change_player
		@current_player == 1 ? (@current_player = 2) : (@current_player = 1)
	end

	def play_round(question, answer)
		puts "Player #{current_player}: #{question}"
		print "> "
		player_answer = gets.chomp
		if player_answer == answer.to_s
			puts "Player #{current_player}: YES! You are correct."
			@correct_answer = true
		else
			puts "Player #{current_player}: Seriously? No!"
			@correct_answer = false
		end
	end

	def print_outcome(p1_lives, p2_lives)
		if p1_lives == 0
			@winner = 2
		elsif p2_lives == 0
			@winner = 1
		end
		if @winner
			puts "Player #{@winner} wins with a score of #{@winner == 1 ? p1_lives : p2_lives}/3"
			puts "----- GAME OVER -----"
			puts "Good bye!"
		else
			puts "P1: #{p1_lives}/3 vs P2: #{p2_lives}/3"
			puts "----- NEW TURN -----"
		end
	end
end