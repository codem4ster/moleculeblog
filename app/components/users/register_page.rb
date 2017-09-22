module Users
  # Create user
  class RegisterPage
    include Molecule::Component
    include FormPackage

    interaction :register, 'Users/Register'

    # def shared_before
    #   sign_up!(username: 'user', password: '123456')
    # end

    def submit
      form_data = Element['#create_user'].serialize_hash(self)
      register! form_data
    end

    def render
      div.users_create!.container do
        if register?[:success]
          h2 { "Merhaba #{register[:resp]}" }
        else
          pp register?[:errors]
        end
        hr
        h3 'Yeni Kullanıcı Oluştur'
        span.test { 'Bişey' }
        br
        br
        form.create_user! do
          text_field(label: 'Kullanıcı Adı', name: 'username',
                     value: @username, error: register?[:errors][:username])
          text_field(label: 'Şifre', name: 'password',
                     value: @password, error: register?[:errors][:password])
          input.btn.btn_default(type: 'button', value: 'Gönder',
                                onclick: method(:submit))
        end
      end
    end
  end
end