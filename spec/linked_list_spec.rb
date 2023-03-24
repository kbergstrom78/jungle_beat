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
    # expect(list.next_node).to eq(nil)
  end

  it 'appends sounds' do
    list = LinkedList.new
    list.append('doop')

    expect(list.head.next_node).to be_nil
    expect(list.head.data).to eq('doop')
    expect(list.count).to eq(1)
  end
  
  xit 'counts nodes' do
    list.count
    expect(list.count).to eq(1)
  end
end