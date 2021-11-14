# frozen_string_literal: true

def series_1
  eps = 1e-10
  sum = 0.0
  n = 2
  loop do
    diff = (1.to_f / (n * n + n))**(n * (n + 1))
    break if diff.abs < eps

    sum += diff
    n += 1
  end
  sum
end

def series_2(x)
  eps = 1e-10
  sum = 0.0
  n = 1
  loop do
    diff = (-1)**(n - 1) * ((x**(2 * n - 1)).to_f / (1..(2 * n - 1)).reduce(1, :*))
    break if diff.abs < eps

    sum += diff
    n += 1
  end
  sum
end

def series_3
  eps = 1e-10
  sum = 0.0
  n = 1
  loop do
    diff = n.to_f / ((1..(3 * n)).reduce(1, :*) * 4**(2 * n) * 4 * n * n + 2 * n)
    break if diff.abs < eps

    sum += diff
    n += 1
  end
  sum
end
