class Cube
	def initialize(edge)
		@edge = edge
	end
	def capacity
		@result = @edge**3
		puts "Capacity of cube: #{@result}"
	end
	def square
		@result = (@edge**2)*6
		puts "Square of cube: #{@result}"
	end
	
end

