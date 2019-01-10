# config.ru
require 'rack'

# The class of a first web app.
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
    elsif env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['Estás en el Index!']]
    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['Estás en otro landing!']]
    else
      [404, { 'Content-Type' => 'text/html' }, '404.html']
    end
  end
end
run MiPrimeraWebApp.new
