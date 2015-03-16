require 'spec_helper'

RSpec.describe User, type: :model do
  describe "Valid User" do
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:team) }
    it { is_expected.to respond_to(:notes) }
  end

  describe "Invalid User" do
    subject(:user) { User.new }
    it { is_expected.to_not be_valid }
  end
end
