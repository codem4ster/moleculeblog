# Roles for the users
class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  has_many :comments

  field :title, type: String
  field :image, type: String
  field :summary, type: String
  field :context, type: String
  field :view_count, type: Integer
end