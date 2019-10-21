class Triangle
  # write code here
  attr_accessor :s1, :s1, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def valid?
    ((@s1 + @s2) > @s3) && ((@s1 + @s3) > @s2) && ((@s2 + @s3) > @s1)
  end

  def kind
    if !valid?
      begin
        raise TriangleError
        # rescue TriangleError => error
        # puts error.message
      end
    elsif (@s1 == @s2) && (@s2 == @s3)
      :equilateral
    elsif (@s1 == @s2) || (@s1 == @s3) || (@s2 == @s3)
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Triangle must be valid to process. Please try again."
    end
  end
end
