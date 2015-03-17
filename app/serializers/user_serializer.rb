class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_one :team
  has_many :notes
end
