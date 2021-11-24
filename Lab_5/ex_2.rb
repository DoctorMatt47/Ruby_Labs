# frozen_string_literal: true

class SeriesSum
  attr_accessor :series

  def initialize(&series)
    @series = series
  end

  def find_sum_by_range(range)
    sum = 0
    range.each do |i|
      sum += @series.call(i)
    end
    sum
  end

  def find_sum_by_eps(eps)
    sum = 0
    prev_diff = 0
    i = 0
    loop do
      next_diff = @series.call(i)
      break if (next_diff - prev_diff).abs < eps

      sum += next_diff
      prev_diff = next_diff
      i += 1
    end
    sum
  end
end
