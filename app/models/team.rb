# DB Schema
# table name: users
# name                   :string

class Team < ActiveRecord::Base
  validates :name, presence: true
  has_many :notes
  has_many :users
end
