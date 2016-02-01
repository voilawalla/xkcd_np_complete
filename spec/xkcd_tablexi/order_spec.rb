require 'spec_helper'

describe Order do
  before do
    @reader = FileReader.new(File.expand_path('./', 'menu.txt'))
  end

  let(:order) { Order.new(@reader.target_price, Menu.new(@reader.items)) }

  it 'returns an array of Menu objects' do
    expect(order.find_combinations.map(&:class)).to eq Array.new(2, Menu)
  end

  it 'returns a correct combination of items and prices' do
    expect(order.find_combinations.inject(0) { |sum, items| sum += items.sum })
      .to eq 1505 * 2
  end
end