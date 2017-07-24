require 'molecule'
require 'materialize/js/bin/materialize.min'
require 'packages'
require 'components'
require 'router'
require 'validation'


# Main application class for frontend
class Application
  include Molecule::Component

  inject Router

  def render
    component router
  end
end

Molecule::Browser.ready? do
  Application.mount_to(Molecule::Browser.body)
end

