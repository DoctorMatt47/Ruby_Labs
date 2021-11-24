# frozen_string_literal: true

class IntegralSolver
  attr_accessor :func

  def initialize(&func)
    @func = func
  end

  def rectangle_method(b, a, n)
    sum = 0
    h = get_h(b, a, n)
    (1..n).each do |i|
      sum += @func.call(get_x(a, i, h))
    end
    h * sum
  end

  def trapeze_method(b, a, n)
    sum = 0
    h = get_h(b, a, n)
    (1..n).each do |i|
      divide = i.eql?(1) || i.eql?(n) ? 2 : 1
      sum += func(a + (i - 1) * h) / divide
    end
    h * sum
  end

  def get_h(b, a, n)
    (b - a).to_f / n
  end

  def get_x(a, i, h)
    a + i * h - h / 2.to_f
  end

  private :get_x, :get_h
end
