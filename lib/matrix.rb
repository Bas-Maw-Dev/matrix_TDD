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
    [[@string]]
  end
end
