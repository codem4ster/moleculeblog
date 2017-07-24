module Users
  # Create user
  class Create
    include Molecule::Component
    include FormPackage

    interaction :user_data, 'Users/CreateUser'

    init do
      user_data!(username: 'user', password: '123456')
    end

    def after_render
      self.user_data = {}
    end

    def submit
      data = Element['#create_user'].serialize_hash
      user_data! data
    end

    def render
      div.users_create!.container do
        if user_data
          h2 { "Merhaba #{user_data[:username]}" }
        end
        hr
        h3 'Yeni Kullanıcı Oluştur'
        br
        br
        form.create_user! do
          text_field(label: 'Kullanıcı Adı', name: 'username',
                     value: user_data[:username])
          text_field(label: 'Şifre', name: 'password',
                     value: user_data[:password])
          input.btn.btn_default(type: 'button', value: 'Gönder',
                                onclick: method(:submit))
        end
      end
    end
  end
end