# Roles for the users
class Role
  include Mongoid::Document
  has_many :users
  field :name, type: String
end
