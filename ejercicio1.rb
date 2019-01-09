# This is the class of an Alumno (student).
class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end
end

def read_file(text)
  alumnos = []
  data = []
  File.open(text, 'r') { |file| data = file.readlines }
  data.each do |alumno|
    alumnos << Alumno.new(*alumno.split(', '))
  end
end

alumnos = read_file('notas.txt')

print alumnos
