# DB Schema
# table name: notes
# status                   :string
# message                  :text
# 

class Note < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  validates :status, :message, :user, presence: true

  before_create :assign_team

  private

  def assign_team
    self.team = user.team
  end

end
