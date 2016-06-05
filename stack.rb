# has attribute 'data_store' that displays array of values in stack
# has attribute 'back' that displays last value in stack (0 by default), user cannot set back attribute
# push method that adds new value to end of stack
# pop method that removes last value in stack, returns nil if nothing to pop

class Stack
  attr_accessor :data_store
  attr_reader :back 
  def initialize
	@data_store = []
	@back = 0
  end

  def push(number)
	@data_store.insert(-1, number)
	@back = @data_store[-1]
	# self allows chaining and returns values that have been changed 
	self 
  end

  def pop
	if @data_store.length == 0
	  @data_store = nil 
	elsif @data_store.length == 1
	  @data_store.delete_at(0)
	  @data_store = []
	  @back = 0 
	elsif @data_store.length > 1
	  @data_store.delete_at(-1)
	  @back = @data_store[-1]
	end
	self 
  end 
end


