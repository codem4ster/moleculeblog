module Layouts
  class TwoColumn
    include Molecule::Component

    def render(&block)
      div.two_column do
        h1 'before'
        instance_exec(&block)
        h1 'after'
      end
    end
  end
end