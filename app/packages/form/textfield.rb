module Form
  # Creates a text field
  class Textfield
    include Molecule::Component

    def active?
      props[:value] ? 'active' : ''
    end

    def render
      div.input_field do
        input(type: 'text', id: props[:name],
              name: props[:name], value: props[:value])
        label(for: props[:name], class: active?) { props[:label] }
      end
    end
  end
end