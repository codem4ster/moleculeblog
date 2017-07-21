class Breadcrumbs
  include Molecule::Component

  def render
    items = [{ 'Anasayfa' => '/' }] + props[:items]
    div.breadcrumbs do
      i.tiny.material_icons { 'home' }
      items.each do |item|
        active = (items.last == item ? 'active' : nil)
        a(href: item.values[0]) do
          span(class: "crumb #{active}") { item.keys[0] }
        end
        i.tiny.material_icons { 'chevron_right' } unless active
      end
    end
  end
end