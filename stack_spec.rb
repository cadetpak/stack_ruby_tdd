#include Stack class in spec file
require_relative 'stack'

#enacts Rspec library, calls 'describe' method that takes in class 'Stack' and expects it to 'do' something
RSpec.describe Stack do
  describe 'attributes' do 
    before do 
	  @stack1 = Stack.new
	end # ends before 

	  it 'has attribute "data_store" that displays array of values in stack' do
	    expect(@stack1.data_store).to eq([])
	  end

	  it 'has attribute "back" that displays last value in stack (0 by default)' do
	    expect(@stack1.back).to eq(0)
	  end

	  it 'raises error if user tries to set back attribute' do 
	    # expect {argument} .to_raise error(argument/method Error)
	    expect{@stack1.back(5)}.to raise_error(ArgumentError)
	  end
  end #ends describe 'attributes'

  describe 'methods' do
    before do 
	  @stack1 = Stack.new
	  @stack2 = Stack.new 
    end
	  it 'has "push" method that adds new value to END of stack' do
	    expect(@stack1.push(5).data_store).to eq([5])
	    # double check for 'back' attribute, each time resetting 'back' as the last value in array
	    expect(@stack2.push(5).push(6).back).to eq(6)
	  end

	  it 'has "pop" method that removes last value in stack' do 
	    # expect(@stack1.push(5).push(6).pop.data_store).to eq([5])
	    expect(@stack1.push(5).pop.data_store).to eq([])
	  end 

	  it '"pop" method returns "nil" if empty array' do 
	    expect(@stack1.pop.data_store).to eq(nil)
	  end 
  end # ends describe 'methods'
end # ends Rspec.describe 