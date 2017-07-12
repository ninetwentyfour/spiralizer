require 'spec_helper'

describe Spiralizer do
  it 'has a version number' do
    expect(Spiralizer::VERSION).not_to be nil
  end

  it 'returns a string of following a matrix around in a spiral' do
    multi_array = [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']]
    expected_string = 'a b c f i h g d e'
    expect(Spiralizer.get_spiral_string(multi_array)).to eq(expected_string)
  end
end
