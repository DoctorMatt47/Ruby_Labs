# frozen_string_literal: true

require_relative 'ex_1'
require_relative 'ex_2'
require_relative 'ex_3'
require_relative 'ex_4'

if __FILE__ == $PROGRAM_NAME
  a, b, c = false
  x = -8
  y = -10
  z = -12
  puts "1 - a: #{ex_a(a, b)}"
  puts "1 - b: #{ex_b(a, b, c, x, y, z)}"
  puts "1 - c: #{ex_c(x, y, z)}"
  puts "1 - d: #{ex_d(x, y, z)}"
  puts "1 - e: #{ex_e(a, b, c)}"
  puts "1 - f: #{ex_f(x, y)}"
  puts "1 - g: #{ex_g(a, b, c)}"
  puts "2: #{expression(0.5, true)}"
  puts "3: #{series_1}"
  puts "3: #{series_2(3)}, #{Math.sin(3)}"
  puts "3: #{series_3}"
  puts "4: #{tab_y(6, 6)}"
  puts "4: #{tab_z(6, 6)}"
  puts "4: #{tab_y_plus_z(6, 6)}"
end
