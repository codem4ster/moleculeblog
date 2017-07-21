module Layouts
  class Main
    include Molecule::Component

    def render
      component Partials::Header
      main do
        component props[:child]
      end
      component Partials::Footer
    end
  end
end