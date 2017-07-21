module Partials
  class Footer
    include Molecule::Component

    def render
      footer class: 'main page-footer' do
        div.container do
          span 'Copyright 2017'
          span 'Onur Eren Elibol'
        end
      end
    end
  end
end