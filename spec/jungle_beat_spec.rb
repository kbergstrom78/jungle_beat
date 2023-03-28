require 'rspec'
require 'pry'
require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'

RSpec.describe JungleBeat do

  it 'creates a JungleBeat' do
    jb = JungleBeat.new
  
    expect(jb).to be_a(JungleBeat)
  end

  it 'is a LL' do
    jb = JungleBeat.new
    jb.list

    expect(jb.list.head).to be_nil
  end

  it 'appends 3 nodes' do
    jb = JungleBeat.new
    jb.append('deep doo ditt')

    expect(jb.append'deep doo ditt').to eq('deep doo ditt')
    expect(jb.list.head.data).to eq('deep')
    expect(jb.list.head.next_node.data).to eq('doo')
  end

  it 'appends 3 more nodes' do
    jb = JungleBeat.new
    
    expect(jb.append('deep doo ditt')).to eq('deep doo ditt')
    expect(jb.list.head.data).to eq('deep')
    expect(jb.list.head.next_node.data).to eq('doo')
    expect(jb.append('woo hoo shu')).to eq('woo hoo shu')
    
    expect(jb.count).to eq(6)
  end

  it 'plays the sounds' do
    jb = JungleBeat.new

    expect(jb.append('deep doo ditt woo hoo shu')).to eq('deep doo ditt woo hoo shu')
    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
    expect(jb.play).to eq('')

  end



end