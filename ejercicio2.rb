# rubocop:disable LineLength

# Este modulo es para una Formula.
module Formula
  def perimetro(lado1, lado2)
    2 * lado1 + 2 * lado2
  end

  def area(lado1, lado2)
    lado1 * lado2
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
end

# Esta es una clase de un Cuadrado.
class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end
end

rectangulo = Rectangulo.new(4, 2)
cuadrado = Cuadrado.new(4)
puts "El perimetro de rectangulo es #{rectangulo.perimetro(rectangulo.lado1, rectangulo.lado2)}"
puts "El area de rectangulo es #{rectangulo.area(rectangulo.lado1, rectangulo.lado2)}"
puts "El perimetro de cuadrado es #{cuadrado.perimetro(cuadrado.lado, cuadrado.lado)}"
puts "El area de cuadrado es #{cuadrado.area(cuadrado.lado, cuadrado.lado)}"

# rubocop:enable LineLength
