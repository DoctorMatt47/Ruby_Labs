# frozen_string_literal: true

require_relative 'ex_1'
require_relative 'ex_2'
require_relative 'ex_3'

def rand_array(size)
  array = []
  (0..(size - 1)).each do
    array.push(rand(-10..10))
  end
  array
end

if __FILE__ == $PROGRAM_NAME
  puts("Sum: #{sum(rand_array(24))}")
  puts("Scalar product: #{scalar_product(rand_array(8), rand_array(8))}")

  matrix = generate_matrix(3, 6)
  vector = [1, 2, 3]
  gaussian_method(matrix, vector)
  back_substitution(matrix, vector)
  puts("Gaussian method matrix: #{matrix}")
  puts("Gaussian method vector: #{vector}")

end
