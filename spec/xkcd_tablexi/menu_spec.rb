require 'spec_helper'

describe Menu do
  before do
    @soup = Item.new('soup', '$4.25')
    @bread = Item.new('bread', '$1.15')
    @soda = Item.new('soda', '$2.50')
  end
  let(:menu) { Menu.new([@soup, @soup, @soup, @bread, @soda, @soda]) }

  it 'calculates the sum of the items' do
    expect(menu.sum).to eq 1890
  end

  it 'finds the lowest price' do
    expect(menu.lowest_price).to eq 115
  end

  it 'formats the correct string for output' do
    expect(menu.to_output).to eq ['The $4.25 soup (3 of these)', 'The $1.15 bread (1 of these)', 'The $2.50 soda (2 of these)']
  end
end