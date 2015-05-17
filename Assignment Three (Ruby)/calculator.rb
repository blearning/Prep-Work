#Assignment 2: Build a Calculator

#Please save your solution into a .rb file in your work directory
#While you're allowed and probably tempted to See the Solution before spending any time on the solution yourself, please don't do that.

class Calculator
	def initialize(brandName)
		@brandName = brandName
	end

	#class public methods

		public

		#display brand name
		def brand
			puts "The brand of this Calculator is: #{@brandName}"
		end

		#addition
		def addition (numbers)
			answer = 0
			
			#prints equation
			printEquation(numbers, "+")

			#The Magic
			numbers.collect { |i| answer += i }

			puts answer
		end

		#subtraction
		def subtraction (numbers)
			answer = 0
			
			#prints equation
			printEquation(numbers, "+")

			#The Magic
			numbers.collect { |i| answer += i }

			puts answer
		end

		#division
		def division (numbers)
			answer = numbers[0]
			
			#prints equation
			printEquation(numbers, "/")

			#The Magic	
			numbers.drop(1).collect { |i| answer = answer / i }

			puts "#{answer}"
		end

		#multiplication
		def multiplication (numbers)
			answer = numbers[0]
			
			#prints equation
			printEquation(numbers, "*")
			
			## The Magic
			numbers.drop(1).collect { |i| answer = answer * i }

			puts "#{answer}"
		end
	


	#class private methods

		private 

		def printEquation(numbers, symbol)

			arraylength = numbers.length

			## Printing the equation ##
			for num in 0...arraylength

				if num < arraylength - 1
					print "#{numbers[num]} #{symbol} "
				else
					print "#{numbers[num]} = "
				end
			end
		end
end

my_Calculator = Calculator.new("Casio")
my_Calculator.brand
puts ""

puts "Addition"
my_Calculator.addition([15,15])
puts ""

puts "Subtraction"
my_Calculator.subtraction([25, -4])
puts ""

puts "Division"
my_Calculator.division([40, 2, -2])
puts ""

puts "Multiplication"
my_Calculator.multiplication([40, 2, -10])
puts ""



