# frozen_string_literal: true

def scalar_product(vec_1, vec_2)
  product = 0
  (0..(vec_1.size - 2)).each do |i|
    product += vec_1[i] * vec_2[i + 1]
  end
  product
end
