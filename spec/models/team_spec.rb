require 'spec_helper'

RSpec.describe Team, type: :model do
  describe "Valid Team" do
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:users) }
    it { is_expected.to respond_to(:notes) }
  end

  describe "Invalid Team" do
    subject(:team) { Team.new }
    it { is_expected.to_not be_valid }
  end
end
