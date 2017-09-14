class Home
  include Molecule::Component

  def click_but
    user_data!(username: 'blah', password: '123456')
    # router.go_to '/users/create'
  end

  def render
    component Layouts::TwoColumn do
      div.home!.container(readonly: true) do
        a(href: '/users/create') { 'Kullanıcı Oluştur' }
      end
    end
  end
end