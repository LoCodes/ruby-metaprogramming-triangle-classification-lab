class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize( side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 

  # def kind
  #   if side1 == side2 && side3 == side1
  #     :equilateral
  #   elsif side1 == side2 || side2 == side3 || side3 == side1 
  #     :isosceles
  #   else
  #     :scalene
  #   end 
  # end 


  def kind 
    if invalid_triangle
      raise TriangleError
    elsif side1 == side2 && side3 == side1
      :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1 
      :isosceles
    else
      :scalene
    end 
  end 

  def invalid_triangle 
    if side1 * side2 * side3 == 0 || side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      raise TriangleError 
    end 
  end 


  class TriangleError < StandardError
    # triangle error code
    puts "Not a triangle"
  end
end


# 1. `:equilateral`
# 2. `:isosceles`
# 3. `:scalene`