class Player
	attr_accessor :lives_remaining, :number

	def initialize(number)
		@number = number
		@lives_remaining = 3
	end

	def lose_life
		@lives_remaining -= 1
	end
end

player1 = Player.new(1)
puts player1.number
puts player1.lives_remaining
player1.lose_life
puts player1.lives_remaining