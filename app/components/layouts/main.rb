module Layouts
  class Main
    include Molecule::Component

    def render
      div.main! do
        component props[:child]
      end
    end
  end
end