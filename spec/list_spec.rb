require 'rspec'
require 'pry'
require './lib/node'
require './lib/list'

RSpec.describe List do
  it 'exists' do
    list = List.new
  expect(list.head).to eq(nil)
  end

  it 'has a head' do
    list = List.new
    list.append('doop')
    
    expect(list.head).to eq('doop')
  end

  it 
end