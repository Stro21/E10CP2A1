# config.ru
require 'rack'

# The class of a first web app.
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
    end
  end
end
run MiPrimeraWebApp.new
