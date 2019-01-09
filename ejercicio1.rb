# Esta es una clase de un Alumno.
class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1.to_i
    @nota2 = nota2.to_i
    @nota3 = nota3.to_i
    @nota4 = nota4.to_i
  end
end

def read_file(text)
  alumnos = []
  data = []
  File.open(text, 'r') { |file| data = file.readlines.map(&:chomp) }
  data.each do |alumno|
    alumnos << Alumno.new(*alumno.split(', '))
  end
  alumnos
end

alumnos = read_file('notas.txt')
print "#{alumnos}\n"
