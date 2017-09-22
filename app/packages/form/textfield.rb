module Form
  # Creates a text field
  class Textfield
    include Molecule::Component

    def active?
      props[:value] ? 'active' : ''
    end

    def invalid?
      props[:error].nil? ? 'validate' : 'validate invalid'
    end

    def render
      div.input_field do
        yield if block_given?
        input(type: 'text', id: props[:name], class: invalid?,
              name: props[:name], value: props[:value])
        label(for: props[:name], class: active?, data: { error: props[:error] }) { props[:label] }
      end
    end
  end
end