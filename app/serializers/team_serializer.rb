class TeamSerializer < NestedTeamSerializer
  has_many :users, serializer: NestedUserSerializer
  has_many :notes, serializer: NestedNoteSerializer
end
