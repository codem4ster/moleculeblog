class Home
  include Molecule::Component

  interaction :user_data, 'Users/CreateUser'

  init do
    user_data!(username: 'user', password: '123456')
  end

  def click_but
    router.go_to '/users/create'
  end

  def render
    div do
      component Partials::Header
      text 'bloom'
      div.testid!.testify(class: 'foo') { 'Bar' }
      if user_data
        h1 "Hello #{user_data[:username]}"
      else
        h1 'Henüz veri yok'
      end
      input(type: 'button', onclick: method(:click_but), value: 'Baz')
    end
  end
end