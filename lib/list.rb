class List
attr_reader :head
  
  def initialize
    @head = nil
  end

  def list
    list
  end
  
  def append(sound)
      if @head
        find_tail.next = (sound)
      else
        @head = (sound)
      end
  end

  def next_node
    ()
  end

end