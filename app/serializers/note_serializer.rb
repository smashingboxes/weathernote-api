class NoteSerializer < NestedNoteSerializer
  has_one :team, serializer: NestedTeamSerializer
  has_one :user, serializer: NestedUserSerializer
end
