class UserSerializer < NestedUserSerializer
  has_one :team, serializer: NestedTeamSerializer
  has_many :notes, serializer: NestedNoteSerializer
end
