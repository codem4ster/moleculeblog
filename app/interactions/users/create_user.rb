module Users
  # Creates a new user and return new user's data
  class CreateUser < ActiveInteraction::Base
    string :username
    string :password
    object :session, class: Molecule::Session

    def execute
      session.set(:password, password)
      { username: username, password: password }
    end
  end
end