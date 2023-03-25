class LinkedList
attr_reader :head
            
  def initialize
  @head = nil
  @node_count = 0

  end
  
  def append(data)
    if (@head.nil?)
      @head = Node.new(data)
      @node_count += 1
    else 
      current_node = @head
      while(current_node.next_node)
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end

    # elsif @head != nil
    #   @next_node = Node.new(data)
    # end
    end


  def count
    if @head.nil?
      counter = 0
    else
      counter = 1
      current_node = @head
        while current_node.next_node
          counter += 1
        end
    end
    counter
  end

  def to_string
   @head.data
  end

end
  
  # def next_node
  #   Node.new
  # end

