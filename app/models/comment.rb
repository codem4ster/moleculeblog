# Roles for the users
class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  belongs_to :article
  has_many :comments, as: :children
  belongs_to :comment, as: :parent, inverse_of: :children, optional: true

  field :title, type: String
  field :context, type: String
end