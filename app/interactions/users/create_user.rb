module Users
  # Creates a new user and return new user's data
  class CreateUser < ActiveInteraction::Base
    string :username
    string :password

    def execute
      { username: username, password: password }
    end
  end
end