require 'clamp'
require 'catpix'
require_relative 'ascii'
require_relative 'auth'
require_relative 'mail'

def fake_loader
  num = Random.new
  num.rand(5...10).times do
    sleep rand.to_f
    print "."
  end
end

Clamp do
  def execute
    render_jedi_academy
    authorize_gabe
  end
end
