require "./Player"
require "./Question"
require "./Game"

game = Game.new
player1 = Player.new(1)
player2 = Player.new(2)

while !game.winner
	q = Question.new
	question = q.question
	answer = q.answer
	game.play_round(question, answer)
	if game.correct_answer == false
		if game.current_player == 1
			player1.lose_life
		else 
			player2.lose_life
		end
	end
	game.print_outcome(player1.lives_remaining, player2.lives_remaining)
	game.change_player
end