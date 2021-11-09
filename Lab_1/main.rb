# frozen_string_literal: true

include Math

def func(x, t, fi)
  tan((exp(t) + 3**fi) / sqrt((t**2 + 2).abs)) - ((cos(fi)**3 + 2.8 * 10**-3.4 + x) / (sin(PI - 4) + 1.2)**(1 / 5))
end

if __FILE__ == $PROGRAM_NAME
  puts 'Hello World!'
  z = func(2, 3, 4)
  puts z
end
