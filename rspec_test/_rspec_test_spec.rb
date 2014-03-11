# require 'rspec'
require_relative 'rspec_test'

describe Person do
	let(:person) {Person.new(name: "Jimmy", age: 23)}

	context '#initialize'	do
		it 'creates a Person object' do
			person.should be_an_instance_of Person
		end
	end

	context '#eat' do 
		it 'says you are eating' do 
			person.eat.should eq "You are eating"
		end
	end

	context '#age' do 
		it 'Should equal age +1' do 
			person.age.should eq 24
		end

	end

end


