require 'spec_helper'

describe Spiralizer do
  let(:multi_array) { [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']] }
  let(:unbalanced_array) { [['a', 'b', 'c'], ['d', 'e'], ['g', 'h', 'i']] }

  it 'has a version number' do
    expect(Spiralizer::VERSION).not_to be nil
  end

  describe '#get_spiral_string' do
    it 'returns a string of following a matrix around in a spiral' do
      expected_string = 'a b c f i h g d e'
      expect(Spiralizer.get_spiral_string(multi_array)).to eq(expected_string)
    end

    it 'should raise an error if not a balanced matrix' do
      expect do
        Spiralizer.get_spiral_string(unbalanced_array)
      end.to raise_error(Spiralizer::UnbalancedMatrixError)
    end
  end

  describe '#get_spiral_array' do
    it 'should return an array following a matrix around in a spiral' do
      expected_array = %w(a b c f i h g d e)
      expect(Spiralizer.get_spiral_array(multi_array)).to eq(expected_array)
    end

    it 'should raise an error if not a balanced matrix' do
      expect do
        Spiralizer.get_spiral_array(unbalanced_array)
      end.to raise_error(Spiralizer::UnbalancedMatrixError)
    end
  end
end
