require "spiralizer/version"
require "spiralizer/errors"

module Spiralizer

  def self.get_spiral_string(multi_array)
    valid_matrix?(multi_array)
    get_spiral(multi_array).join(' ')
  end

  def self.get_spiral_array(multi_array, result=nil)
    valid_matrix?(multi_array)
    get_spiral(multi_array)
  end

  private

    def self.get_spiral(multi_array, result=nil)
      result = [] if result.nil?
      if multi_array.empty?
        return result
      else
        result.concat (multi_array.shift)
        get_spiral(multi_array.transpose.reverse, result)
      end
    end

    def self.valid_matrix?(multi_array)
      row_length = multi_array.first.length
      if multi_array.any? { |row| row.length != row_length }
        raise UnbalancedMatrixError, "Each row must have the same number of columns"
      end
    end
end
