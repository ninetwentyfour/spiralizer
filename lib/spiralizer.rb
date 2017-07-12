require "spiralizer/version"
require "spiralizer/errors"

module Spiralizer

  def self.get_spiral_string(multi_array)
    @ring = []
    cnt = 0
    total_length = multi_array.length * multi_array.first.length
    until @ring.length == total_length
      get_ring(multi_array, cnt)
      cnt += 1
    end
    @ring.join(' ')
  end

  def self.get_ring(multi_array, offset=0)
    # get the first part, this is easy.
    multi_array[offset..(-offset - 1)].first[offset..(-offset - 1)].each{|v| @ring << v}

    # go down
    multi_array[offset..(-offset - 1)].each_with_index do |arr, i|
      next if i == 0
      @ring << arr[(-offset - 1)]
    end

    # go back left
    multi_array[offset..(-offset - 1)].last[offset..(-offset - 2)].reverse.each{|v| @ring << v}

    # go up
    multi_array[offset + 1..(multi_array.length - offset - 2)].reverse.each_with_index do |arr, i|
      @ring << arr[offset]
    end
  end
end
