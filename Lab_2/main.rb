# frozen_string_literal: true

require_relative 'ex_1'
require_relative 'ex_2'
require_relative 'ex_3'
require_relative 'ex_4'

if __FILE__ == $PROGRAM_NAME
  coords = [Point.new(62, 300), Point.new(105, 303), Point.new(159, 304), Point.new(217, 303), Point.new(257, 302),
            Point.new(320, 292), Point.new(373, 280), Point.new(421, 234), Point.new(439, 187), Point.new(449, 144),
            Point.new(430, 107), Point.new(403, 78), Point.new(354, 65), Point.new(298, 54), Point.new(208, 49),
            Point.new(169, 42), Point.new(113, 45), Point.new(79, 67), Point.new(66, 123), Point.new(59, 156),
            Point.new(65, 198), Point.new(104, 202), Point.new(147, 220), Point.new(153, 242), Point.new(131, 249),
            Point.new(87, 256), Point.new(71, 267)]
  puts "Polygon square: #{get_polygon_square(coords)}"
  puts "Range: #{get_range(3, 8, 16)}"
  puts "Binary to decimal: #{binary_to_decimal(111_000_100_111)}"
  puts "Decimal to binary: #{decimal_to_binary(161)}"
end
