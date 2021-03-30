class Question 
	attr_accessor :question, :answer

	def initialize
		num1 = rand(1..20)
		num2 = rand(1..20)
		@question = "What does #{num1} plus #{num2} equal?"
		@answer = num1 + num2
	end
end


q1 = Question.new
puts q1.question
puts q1.answer

q2 = Question.new
puts q2.question
puts q2.answer