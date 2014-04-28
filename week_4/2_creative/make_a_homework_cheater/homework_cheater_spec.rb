require_relative "my_solution"

describe 'homework' do
	it "is a defined method" do
		defined?(homework).should eq 'method'
	end
	it "requires five arguments" do
		method(:homework).arity.should eq 5
	end
end
