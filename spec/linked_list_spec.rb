require 'rspec'
require 'pry'
require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
    it 'it exists' do
      list = LinkedList.new
  
      expect(list).to be_a(LinkedList)
    end
  
    it 'has a head' do
      list = LinkedList.new
  
      expect(list.head).to be_nil
    end
  
    it 'can append a node' do
      list = LinkedList.new
      list.append("doop")
  
      expect(list.head.next_node).to be_nil
      expect(list.head.data).to eq('doop')
      expect(list.count).to eq(1)
    end
  
    it "appends more nodes" do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
  
      expect(list.head.next_node.data).to eq('deep')
    end
  
    it 'generates a string of the nodes' do 
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
  
      expect(list.to_string).to eq('doop deep')
    end

    it 'appends and prepends' do
      list = LinkedList.new
      list.append('plop')
      
      expect(list.to_string).to eq('plop')
      
      list.append('suu')
      list.prepend('dop')
      
      expect(list.to_string).to eq('dop plop suu')
      expect(list.count).to eq(3)
    end

    it 'inserts data' do
      list = LinkedList.new
      list.append('plop')
      list.append('suu')
      list.prepend('dop')
      list.insert(1, 'woo')

      expect(list.to_string).to eq('dop woo plop suu')
    end

    it "finds stuff" do
      list = LinkedList.new
      list.append('deep')
      list.append('woo')
      list.append('shi')
      list.append('shu')
      list.append('blop')
      list.find(2,1)
      
      expect(list.find(2,1)).to eq('shi')
    end

    it 'removes and returns last element from LL' do
      list = LinkedList.new
      list.append('deep')
      list.append('woo')
      list.append('shi')
      list.append('shu')
      list.append('blop')
   
      expect(list.pop).to eq('blop')
      expect(list.pop).to eq('shu')
      expect(list.to_string).to eq('deep woo shi')
    end
end