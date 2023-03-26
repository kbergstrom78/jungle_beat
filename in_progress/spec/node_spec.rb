require 'rspec'
require 'pry'
require './lib/node'

RSpec.describe Node do
  it 'has data' do 
    node = Node.new('plop')
    expect(node.data).to eq('plop')
 
  end

  it 'has no next node' do
    node = Node.new('plop')
    expect(node.next_node).to eq(nil)
  end

  it 'is the tail if next_node is nil' do
    node = Node.new('doop')
    expect(node.tail?).to be(true)
  end


end

