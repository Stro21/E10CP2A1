# Este modulo es para una Formula.
module Formula
  def perimetro
    if square?
      4 * side(0)
    else
      2 * (side(0) + side(1))
    end
  end

  def area
    if square?
      side(0)**2
    else
      side(0) * side(1)
    end
  end

  def square?
    self.class == Cuadrado
  end

  def side(ind)
    instance_variable_get(instance_variables[ind])
  end
end

# Esta es una clase de un Rectangulo.
class Rectangulo
  include Formula
  attr_reader :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def area_
    area(base, altura)
  end

  def perimetro_
    perimetro(base, altura)
  end
end

# Esta es una clase de un Cuadrado.
class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end

  def area_
    area(lado, lado)
  end

  def perimetro_
    perimetro(lado, lado)
  end
end

r1 = Rectangulo.new(4, 2)
c1 = Cuadrado.new(4)
puts "El perimetro de rectangulo es #{r1.perimetro}"
puts "El area de rectangulo es #{r1.area}"
puts "El perimetro de cuadrado es #{c1.perimetro}"
puts "El area de cuadrado es #{c1.area}"
