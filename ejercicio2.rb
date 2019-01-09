# Esta es una clase de un Rectangulo.
class Rectangulo
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
end

# Esta es una clase de un Cuadrado.
class Cuadrado
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
