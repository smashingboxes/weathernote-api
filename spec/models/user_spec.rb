require 'spec_helper'

RSpec.describe User, type: :model do
  describe "Valid User" do
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:team) }
    it { is_expected.to respond_to(:notes) }
  end

  describe "Invalid User" do
    subject(:user) { User.new(email: "aaaaaaa") }
    it { is_expected.to_not be_valid }
  end

  describe "#assign_team" do
    subject(:user) { create(:user, email: "ian@smashingboxes.com") }
    it "properly assigns the user team" do
     expect(user.team.name).to eq("smashingboxes")
    end
  end
end
