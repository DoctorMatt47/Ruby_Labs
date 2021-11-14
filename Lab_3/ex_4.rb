# frozen_string_literal: true

include Math

def fun_y(x, n, c)
  ((n**(1.to_f / 4) + x**(1.to_f / 4))**2 + x**(2.to_f / n) + n**(2.to_f / n) + 1) / (1 * (x - n)) + ((n * x - x**c) / (x**2 + x + 1))
end

def fun_z(x, n, c)
  tan(3 * x) / (tan(3 * x)**2 - 1) * ((1 - (1.to_f / tan(3 * x)**2) / ((1.to_f / tan(2 * x) - tan(2 * PI / 5 * x)**(1.to_f / n))))) + cos(2 * x)**(-1)
end

def tab_y(n, c)
  tabs = []
  delta = (n - 1).to_f / (n + c)
  (1..n).step(delta) do |i|
    tabs.push(fun_y(i, n, c))
  end
  tabs
end

def tab_z(n, c)
  tabs = []
  delta = (PI - (PI / n)) / ((3.to_f / 2) * n + c)
  x = PI / n
  while x <= PI
    tabs.push(fun_z(x, n, c))
    x += delta
  end
  tabs
end

def tab_y_plus_z(n, c)
  tabs = []
  delta = (c - 2).to_f / (2 * n)
  x = PI / n
  while x <= PI
    if x > 2 && x < n
      tabs.push(fun_y(x, n, c))
    elsif x > n && x < 2 * n
      tabs.push(fun_z(x, n, c))
    else
      tabs.push(fun_y(x, n, c) + fun_z(x, n, c))
    end
    x += delta
  end
  tabs
end
