require 'spec_helper'

RSpec.describe NotesController, type: :controller do
  describe "POST /notes" do
    context "with valid parameters" do
      let(:user) { create(:user) }
      before(:each) do
        @payload = attributes_for(:note)
          .merge(user_id: user.id)
      end
      it "creates the note" do
        expect { post :create, note: @payload, format: :json }.to change{ Note.count }.by(1)
      end

      it "renders the created note" do
        post :create, note: @payload, format: :json
        expect(response).to have_http_status(:created)
        note_json = JSON.parse(response.body)["note"]
        expect(note_json).to include("status")
        expect(note_json).to include("message")
        expect(note_json["team"]["id"]).to eq(user.team.id)
        expect(note_json["team"]["name"]).to eq(user.team.name)
        expect(note_json["user"]["id"]).to eq(user.id)
        expect(note_json["user"]["email"]).to eq(user.email)
      end
    end

    context "with invalid parameters" do
      it "does not create the note" do
        expect { post :create, note: { status: nil }, format: :json }.to_not change{ Note.count }
      end

      it "renders the errors" do
        post :create, note: { message: nil }, format: :json
        expect(response).to have_http_status(:unprocessable_entity)
        errors_json = JSON.parse(response.body)["errors"]
        expect(errors_json["status"]).to include("can't be blank")
        expect(errors_json["message"]).to include("can't be blank")
        expect(errors_json["user"]).to include("can't be blank")
      end
    end
  end
end
