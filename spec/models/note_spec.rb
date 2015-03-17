require 'spec_helper'

RSpec.describe Note, type: :model do
  describe "Valid note" do
    it { is_expected.to respond_to(:status) }
    it { is_expected.to respond_to(:message) }
    it { is_expected.to respond_to(:user) }
    it { is_expected.to respond_to(:team) }
  end

  describe "Invalid note" do
    subject(:note) { Note.new }
    it "has a status validation error" do
      expect(note).to_not be_valid
      expect(note.errors[:status]).to include("can't be blank")
    end
    it "has a message validation error" do
      expect(note).to_not be_valid
      expect(note.errors[:message]).to include("can't be blank")
    end
  end

  describe "#assign_team" do
    subject(:note) { create(:note) }
    it "should assign the note to the user's team" do
      expect(note.team).to eq(note.user.team)
    end
  end
end
