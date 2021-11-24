# frozen_string_literal: true

def sum(array)
  sum_even_negative = 0
  sum_odd_positive = 0
  array.each do |elem|
    sum_even_negative += elem if elem.even? && elem.negative?
    sum_odd_positive += elem if elem.odd? && elem.positive?
  end
  [sum_even_negative, sum_odd_positive]
end
