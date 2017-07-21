module Partials
  class Header
    include Molecule::Component

    def breadcrumb_items
      [{ 'Bir delinin hatıra defteri' => '/bir-delinin-hatira-defteri' }]
    end

    def render
      header class: 'main' do
        div.box do
          div.container class: 'head' do
            h2 'Codemaniac.net'
            button.waves_effect.waves_light.btn { 'Giriş Yap' }
          end
        end
        div.container do
          component Breadcrumbs, props: { items: breadcrumb_items }
        end
      end
    end
  end
end