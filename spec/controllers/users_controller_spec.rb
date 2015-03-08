require 'spec_helper'

describe UsersController, type: :controller do

  let(:user) { create(:user) }
  let(:attributes) { user.attributes }

  describe "#new" do
    it "is successfull" do
      get :new
      expect(response).to be_success
    end
  end

  describe "#create" do
    it "changes count" do
      attributes[:password] = "password"
      expect { post :create, user: attributes }.to change(User, :count).by(1)
    end
  end
end
