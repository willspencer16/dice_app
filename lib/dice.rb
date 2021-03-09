class Dice
	attr_reader :arr

	def initialize
		@@arr = []
	end

	def roll
		@@arr << rand(1..6)
	end

	def number_of_dice(number)
		number
	end

	def score
		puts @@arr
		@arr
	end
end