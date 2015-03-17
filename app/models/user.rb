# DB Schema
# table name: users
# email                   :string

class User < ActiveRecord::Base
  validates :email, presence: true
  belongs_to :team
  has_many :notes
end
