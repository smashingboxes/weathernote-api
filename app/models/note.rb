# DB Schema
# table name: notes
# status                   :string
# message                  :text
# 

class Note < ActiveRecord::Base
  validates :status, :message, presence: true
  belongs_to :team
  belongs_to :user

  before_create :assign_team

  private

  def assign_team
    self.team = user.team
  end

end
