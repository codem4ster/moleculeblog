module Partials
  class Header
    include Molecule::Component

    def render
      header do
        div.box do
          div.container class: 'head' do
            h2 'Codemaniac.net'
            button.waves_effect.waves_light.btn { 'Giriş Yap' }
          end
        end
        div.container do
          i.tiny.material_icons { 'home' }
          span.crumb { 'Anasayfa' }
          i.tiny.material_icons { 'chevron_right' }
          span.crumb.active { 'Bir delinin hatıra defteri' }
        end
      end
    end
  end
end