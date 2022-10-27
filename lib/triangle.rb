class Triangle
  attr_accessor :line_x, :line_y, :line_z

  def initialize line_x,line_y,line_z
    @line_x = line_x
    @line_y = line_y
    @line_z = line_z
  end 

  def kind
    if  line_x <= 0 || line_y <= 0 || line_z <= 0
      raise TriangleError
    elsif (line_x + line_y) <= line_z || (line_x + line_z) <= line_y || (line_y + line_z) <= line_x
      raise TriangleError
    elsif line_x == line_y && line_x == line_z
      :equilateral
    elsif line_x == line_y || line_x == line_z || line_y == line_z
      :isosceles
    else line_x != line_y || line_x != line_z || line_y != line_z
      :scalene
    end


  end



     class TriangleError < StandardError
     end
 




end


 # write code here

  # attr_accessor :

  # def initialize()
  # end

  # def 
  #   if
  #   else
  #     begin
  #       raise TriangleError
  #     rescue Triangle => error
  #       puts error.message
  #     end
  #   end
  # end

  # class TriangleError < StandardError
  #   def message
  #     ""
  #   end
  # end