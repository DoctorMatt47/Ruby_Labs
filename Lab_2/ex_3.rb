# frozen_string_literal: true

def binary_to_decimal(binary)
  decimal = 0
  power_of_two = 1
  divider = 1
  while divider <= binary
    digit = (binary % (divider * 10)) / divider
    decimal += power_of_two if digit == 1
    divider *= 10
    power_of_two *= 2
  end
  decimal
end
