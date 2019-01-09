# config.ru
require 'rack'

# rubocop:disable LineLength

# The class of a first web app.
class MiPrimeraWebApp
  def call(env)
    [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']] if env['REQUEST_PATH'] == '/'
  end
end
run MiPrimeraWebApp.new

# rubocop:enable LineLength
