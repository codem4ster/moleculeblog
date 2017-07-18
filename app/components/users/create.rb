module Users
  # Create user
  class Create
    include Molecule::Component

    def render
      div { 'Create User' }
      a(href: '/') { 'Anasayfa' }
    end
  end
end