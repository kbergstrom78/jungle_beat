require 'rspec'
require 'pry'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it 'has a head with no sound' do
    list = LinkedList.new
    
    expect(list.head).to eq(nil)
  end

  it 'appends sounds' do
    list = LinkedList.new
    list.append('doop')
   
    expect(list.head.next_node).to be_nil
    expect(list.head.data).to eq('doop')
  end
  
  it 'counts nodes' do
    list = LinkedList.new
    list.append('doop')
    list.count

    expect(list.count).to eq(1)
  end

  it 'returns a string' do
    list = LinkedList.new
    list.append('doop')
    list.to_string
  
    expect(list.to_string).to eq('doop')
    
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end
 
  xit 'adds more nodes'
    list = LinkedList.new
    list.append('doop')
  end
    

  