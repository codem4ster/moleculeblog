module Layouts
  # Top level component for wrapping layouts
  class Wrapper
    include Molecule::Component

    def render
      component router
    end
  end
end
