class Home
  include Molecule::Component

  init do
    Molecule::PowerCable.send(
      'Users/CreateUser',
      username: 'onur', password: '123456'
    ) do |initial_data|
      @initials = initial_data
      render!
    end
  end

  def render
    div do
      text 'bloom'
      div.testid!.testify(class: 'murtaza') { 'Test' }
      if @initials
        h1 { "Merhaba #{@initials[:username]}" }
      else
        h1 { 'Henüz veri yok' }
      end
    end
  end
end