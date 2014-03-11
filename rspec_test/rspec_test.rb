class Person
	def initialize(args)
		@name = args[:name]
		@age = args[:age]
	end

	def eat
		"You are eating"
	end

	def sleep 
		puts "You are sleeping"
	end

	def age
		@age += 1
	end

end
