# frozen_string_literal: true

def ex_a(a, b)
  !(a | b) & (a | !b)
end

def ex_b(a, b, c, x, y, z)
  (z == y) | (y <= 6) & a | b & c & (x >= 1.5)
end

def ex_c(x, y, z)
  (8 - x * 2 <= z) & (x * x <= y * y) | (z >= 15)
end

def ex_d(x, y, z)
  ((x.positive?) & (y.negative?)) | (z >= ((x * y + (-y / x)) + -z))
end

def ex_e(a, b, c)
  !(a | b & !(c | (!a | b)))
end

def ex_f(x, y)
  ((x * x + y * y) >= 1) & (x >= 0) & (y >= 0)
end

def ex_g(a, b, c)
  (a & (c & b ^ b | a) | c) & b
end
