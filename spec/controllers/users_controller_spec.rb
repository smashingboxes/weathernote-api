require 'spec_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /users" do
    it "creates a User when it doesn't exist yet" do
      email = attributes_for(:user)[:email]
      expect { get :find_or_create, user: { email: email }, format: :json }
        .to change { User.count }.by(1)
      expect(response).to have_http_status(:ok)
      user_json = JSON.parse(response.body)["user"]
      expect(user_json["email"]).to eq(email)
      expect(user_json["team"]).to be_truthy
    end

    # I am adding this test because I did not read `first_or_create`'s docs
    it "creates a second User" do
      user1 = create(:user)
      new_email = "new_user@team.com"
      expect { get :find_or_create, user: { email: new_email }, format: :json }
        .to change { User.count }.by(1)
      expect(response).to have_http_status(:ok)
      user_json = JSON.parse(response.body)["user"]
      expect(user_json["email"]).to eq(new_email)
      expect(user_json["team"]).to be_truthy
    end

    it "finds the User when it already exists" do
      user = create(:user)
      get :find_or_create, user: { email: user.email }, format: :json
      expect(response).to have_http_status(:ok)
      user_json = JSON.parse(response.body)["user"]
      expect(user_json["id"]).to eq(user.id)
      expect(user_json["email"]).to eq(user.email)
      expect(user_json["team"]["name"]).to eq(user.team.name)
    end
  end
end
