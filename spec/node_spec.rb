require 'rspec'
require 'pry'
require './lib/node'

RSpec.describe Node do
  it "has data" do
    node = Node.new('plop')
    # node.data
    expect(node.data).to eq('plop')
    expect(node.next_node).to eq(nil)
  end
end