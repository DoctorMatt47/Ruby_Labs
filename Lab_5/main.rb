# frozen_string_literal: true

require_relative 'ex_1'
require_relative 'ex_2'

include Math

if __FILE__ == $PROGRAM_NAME
  rectangle_solver = IntegralSolver.new { |x| asin(sqrt(x)) / sqrt(x - x * x) }
  puts "Rectangle: #{rectangle_solver.rectangle_method(0.2, 0.3, 10)}"
  trapeze_solver = IntegralSolver.new { |x| tan(x / 2.to_f + PI / 4)**3 }
  puts "Trapeze: #{trapeze_solver.rectangle_method(0.2, 0.3, 10)}"

  series_sum = SeriesSum.new { |i| cos(i * PI / 4) / (1..i).reduce(1, :*) }
  puts "Sum by range: #{series_sum.find_sum_by_range((13..58))}"
  puts "Sum by eps: #{series_sum.find_sum_by_eps(0.01)}"
end
