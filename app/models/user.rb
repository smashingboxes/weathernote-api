# DB Schema
# table name: users
# email                   :string

class User < ActiveRecord::Base
  belongs_to :team
  delegate :notes, to: :team
  validates :email, presence: true
end
