# User class of project
class User
  include Mongoid::Document
  include BCrypt

  belongs_to :role

  field :username, type: String
  field :crypted_pass, type: String
  field :email, type: String

  def password
    @password ||= Password.new(crypted_pass)
  end

  def password=(new_password)
    self.crypted_pass = @password = Password.create(new_password)
  end
end
