# rubocop:disable LineLength

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

# Este modulo es para una Formula.
module Formula
  def perimetro(lado1, lado2)
    2 * lado1 + 2 * lado2
  end

  def area(lado1, lado2)
    lado1 * lado2
  end
end

rectangulo = Rectangulo.new(4, 2)
cuadrado = Cuadrado.new(4, 4)
puts "El area de rectangulo es #{rectangulo.perimetro(rectangulo.lado1, rectangulo.lado2)}"

# rubocop:enable LineLength
