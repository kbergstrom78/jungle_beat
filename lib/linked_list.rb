class LinkedList
attr_reader :head
            
    def initialize
    @head = nil
    @node_count = 0

    end
  
    def append(data)
      if @head == nil
        @head = Node.new(data)
        @node_count += 1
      end
    end

  def count
    @node_count
  end
end
  
  # def next_node
  #   Node.new
  # end

