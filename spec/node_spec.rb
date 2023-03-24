require 'rspec'
require 'pry'
require './lib/node'

RSpec.describe Node do
  it "has data" do
    linked_list = LinkedList.new
   
    expect(node.data).to eq('plop')
    expect(node.next_node).to eq(nil)
  end
end