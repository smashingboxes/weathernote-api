# DB Schema
# table name: teams
# name                   :string

class Team < ActiveRecord::Base
  validates :name, presence: true
  has_many :notes
  has_many :users
end
