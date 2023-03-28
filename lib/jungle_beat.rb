class JungleBeat 

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)

    data.split(' ').each do |a|
      if data.include?(a)
        @list.append(a)
      end
    end
    data
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
   ` say -r 200 -v Boing #{beats}`
  end


end