module Users
  # Create user
  class Create
    include Molecule::Component

    def render
      div { 'Create User' }
    end
  end
end