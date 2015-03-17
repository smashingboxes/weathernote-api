require 'spec_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /users/" do
    it "creates a User when it doesn't exist yet" do
      email = attributes_for(:user)[:email]
      get :find_or_create, user: { email: email }, format: :json
      expect(response).to have_http_status(:ok)
      user_json = JSON.parse(response.body)["user"]
      expect(user_json["email"]).to eq(email)
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
