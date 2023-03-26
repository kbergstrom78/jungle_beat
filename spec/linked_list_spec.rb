require 'rspec'
require 'pry'
require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it 'has no head by default' do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end

  it 'appends a sound' do
    list = LinkedList.new
    list.append('doop')

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head.data).to eq('doop')
  end

  it 'has a count of 1 when there is a head' do
    list = LinkedList.new
    list.append('doop')

    expect(list.count).to eq(1)
  end

  it 'returns a string' do
    list = LinkedList.new
    list.append('doop')
    
    expect(list.to_string).to eq('doop')
  end

  it 'is an empty LL' do
    list = LinkedList.new
    expect(list.empty?).to eq(true)
  end

  it 'is not an empty LL' do
    list = LinkedList.new
    list.append('doop')
    expect(list.empty?).to eq(false)
  end

  it 'appends another node' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')

    expect(list.head.data).to eq('doop')
 
    expect(list.head.next_node.data).to eq('deep')
    expect(list.count).to eq(2)
  end




end