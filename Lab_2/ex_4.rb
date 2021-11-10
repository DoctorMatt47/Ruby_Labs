# frozen_string_literal: true

def decimal_to_binary(decimal)
  binary = 0
  power_of_two = 1
  digit_number = 0
  while decimal > power_of_two * 2
    power_of_two *= 2
    digit_number += 1
  end

  while decimal != 0
    if decimal - power_of_two >= 0
      decimal -= power_of_two
      binary += 10**digit_number
    end
    power_of_two /= 2
    digit_number -= 1
  end
  binary
end
