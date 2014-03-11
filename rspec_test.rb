class Person
	def initialize(args)
		@name = args[:name]
		@age = args[:age]
	end

	def eat
		puts "You are eating"
	end

	def sleep 
		puts "You are sleeping"
	end

	def age
		@age += 1
	end

end

require 'rspec'


describe Person do
	let(:person) {Person.new(name: "Jimmy", age: "23")}

	context '#initialize'	do
		it 'creates a Person object' do
			person.should be_an_instance_of Person
		end


	end
end