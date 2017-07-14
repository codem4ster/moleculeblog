class Home
  include Molecule::Component

  interaction :user_data, 'Users/CreateUser'

  init do
    user_data!(username: 'onur', password: '123456')
  end

  def click_but
    user_data[:username] = 'Osman'
    render!
  end

  def render
    div do
      component Header
      text 'bloom'
      div.testid!.testify(class: 'murtaza') { 'Test' }
      if user_data
        h1 { "Merhaba #{user_data[:username]}" }
      else
        h1 { 'Henüz veri yok' }
      end
      input(type: 'button', onclick: method(:click_but), value: 'Mustafa')
    end
  end
end