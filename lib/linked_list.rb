require './lib/node'

class LinkedList
  attr_accessor :head,
                :node

  def initialize
    @head = nil
    @node = node
  end

  def empty?
    @head.nil?
  end

  def append(data)
    if @head
     @head.next_node = Node.new(data)
    else
      @head = Node.new(data)
    end
  end

  
  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end
  
  def count
    return 0 if empty?
    count_node(head,1)
    
    # if @head.nil?
    #   0
    # else
    #   1
    # end
  end

  def to_string
   @head.data
  end

  def last_node(node)
    return @node if node.tail?
    last_node(node.next_node)
  end


  def new_node(data)
    Node.new(data)
  end


end
