# Este modulo es para una Formula.
module Formula
  def perimetro
    lado1 = self.instance_variable_get(self.instance_variables[0])
    if square?
      4 * lado1
    else
      lado2 = self.instance_variable_get(self.instance_variables[1])
      2 * (lado1 + lado2)
    end
  end

  def area
    lado1 = self.instance_variable_get(self.instance_variables[0])
    if square?
      lado1**2
    else
      lado2 = self.instance_variable_get(self.instance_variables[1])
      lado1 * lado2
    end
  end

  def square?
    self.class == Cuadrado
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
