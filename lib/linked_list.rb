# require './lib/node'

class LinkedList
  attr_accessor :head,
                :current_node

  def initialize
    @head = nil
  end

  # def empty?
  #   @head.nil?
  # end

  def append(data)
    if @head == nil
      @head = Node.new(data)
      @head.data
    else
      make_current_node(data)
    end
  end

  def make_current_node(data)
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
    current_node.next_node.data
  end
  
  def count
    if @head == nil
      count = 0
    else
      current_node = @head.next_node
      count = 1
      until current_node.nil?
        count += 1
        current_node = current_node.next_node
      end
    end
    count
  end

  def to_string
    string = ""
    string << @head.data
    current_node = @head.next_node
    until current_node.nil?
      string << " " + current_node.data
      current_node = current_node.next_node
    end
    string
  end

  def prepend(data)
    if @head == nil
      @head = Node.new(data)
      @head.data
    else 
      current_node = Node.new(data)
      current_node.next_node = @head
      @head = current_node
    end
      @head.data
  end

  def insert(index, data)
    current_node = @head
    counter = 1
    if index == 0 
     prepend(data)
    else
     while index != counter
       current_node = current_node.next_node
       counter += 1
     end
     placeholder = current_node.next_node
     insert_node = Node.new(data)
     current_node.next_node = insert_node
     insert_node.next_node = placeholder
     insert_node.data
    end
   end

   def find(index, num_elements)

   end

   def includes?(data)
    self.to_string.include?(data)
   end

   def pop 
    current_node = @head
    


   end

end
