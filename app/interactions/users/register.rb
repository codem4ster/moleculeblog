module Users
  # Creates a new user and return new user's data
  class Register < ActiveInteraction::Base
    string :username
    string :email, default: nil
    string :password
    string :password_confirmation, default: nil
    object :session, class: Molecule::Session
    validates_presence_of :username, :email, :password, :password_confirmation
    validates_confirmation_of :password

    def execute

      { resp: username }
    end
  end
end