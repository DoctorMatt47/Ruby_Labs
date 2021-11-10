class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end
end

def get_polygon_square(coords)
  sum = 0
  (0..coords.length - 2).each do |i|
    sum += coords[i].x * coords[i + 1].y - coords[i].y * coords[i + 1].x
  end
  sum.abs / 2
end
