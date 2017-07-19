require 'molecule'
require 'materialize/js/bin/materialize.min'
require 'components'
require 'router'


# Main application class for frontend
class Application
  include Molecule::Component

  inject Router

  def render
    component Layouts::Wrapper
  end
end

Molecule::Browser.ready? do
  Application.mount_to(Molecule::Browser.body)
end

