class Node
  attr_accessor :next_node
  attr_reader :data

  def initialize(data) 
    @data = data
    @next_node = nil
  end 

  def tail?
    next_node.nil?
  end

end