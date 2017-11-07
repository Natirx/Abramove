require './cube.rb'
require './prime.rb'
require './automorphic.rb'
class Mean 
	attr_accessor :x
	def initialize 
		@x = []
	end
	def add_number(t)
		@x << t
	end

	def run
		loop do
			puts "TASK"
			puts "m: Arithmetic mean"
			puts "g: Geomtric mean"
			puts "c: Cube"
			puts "p: Prime of number"
			puts "a: automorphic numbers"
			puts "e: Exit"
			print "Press key:"
			input = gets.chomp.downcase
			case input 
				when 'e'
					break
				when 'm'
					mean
				when 'g'
					geometric
				when 'c'
					cube
				when 'p'
					divisor
				when 'a'
					automorphic
				
			end
		end
	end
def automorphic
	morphic = Automorphic.new
	print "Enter number:"
	entered = gets.chomp.to_i
	morphic.is_automorphic(entered)
end
	def cube
		print "Edge: "
		edge = gets.chomp.to_i
		cube = Cube.new(edge)
		
		loop do
			puts "c: Capasity of Cube"
			puts "s: Square of Cube"
			puts "Any other key to exit"
			print "Press key:"
			response = gets.chomp.downcase
			case response
				when 'c'
					cube.capacity
				when 's'
					cube.square
				else
					break
				end
			end
		end
def divisor
	print "Enter number:"
	number = gets.chomp.to_i
	prime = PRime.new(number)
	loop do
		puts "d: Find divisors of number"
		puts "p: Find prime divisors of number"
		puts "r: TO enter new number"
		puts "Any other key to exit"
		print "Press key:"
		respon = gets.chomp.downcase
		case respon
	when 'd'
		prime.divisors
		prime.show_divisors
	when 'p'
		prime.prime
		prime.show_prime
	when 'r'
		divisor
	else
		break
	end
end
end
def mean
	mean = Mean.new
	print "First number: "
	@first = gets.chomp.to_i
	add_number(@first)
	print "Second number: "
	@second = gets.chomp.to_i
	add_number(@second)
	@sum = 0
	@x.each {|value| @sum += value}
	@result = @sum.to_f/x.sizem
	puts "Arithmetic mean:  #{@result}"
	
end


	def geometric
		geometric = Mean.new
		print "First number: "
		@first = gets.chomp.to_i
		add_number(@first)
		print "Second number: "
		@second = gets.chomp.to_i
		add_number(@second)
		@prod = 1.0
		@x.each {|value| @prod *= value}
		@result = @prod ** (1.0/x.size)
		puts "Geomtric mean: #{@result}"
	end
end

number = Mean.new
number.run
