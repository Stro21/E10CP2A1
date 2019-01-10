# config.ru
require 'rack'

# rubocop:disable LineLength

# The class of a first web app.
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
    elsif env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html; charset=utf-8' }, ['Estás en el Index!']]
    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html; charset=utf-8' }, ['Estás en otro landing!']]
    else
      [404, { 'Content-Type' => 'text/html' }, [File.read('404.html')]]
    end
  end
end
run MiPrimeraWebApp.new

# rubocop:enable LineLength
