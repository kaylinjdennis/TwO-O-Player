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