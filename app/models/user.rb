# DB Schema
# table name: users
# email                   :string

class User < ActiveRecord::Base
  belongs_to :team
  has_many :notes
  validates :email, presence: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  before_create :assign_team

  private

  def assign_team
    team_name = self.email.split("@").last.slice(/.*\./).chop
    self.team = Team.first_or_create(name: team_name)
  end
end
