# frozen_string_literal: true

# Matrix accepts a n x n grid as a string seperated by newlines
class Matrix
  def initialize(string)
    raise ArgumentError, 'Expected a string' unless string.is_a?(String)

    @string = string
  end

  def rows
    @string.split(/\n/).map(&:split)
  end

  def columns
    rows = self.rows
    number_of_coloumns = rows[0].length
    columns = Array.new(number_of_coloumns) { [] }
    rows.each do |row|
      row.each_with_index { |element, index| columns[index] << element }
    end
    columns
  end
end
