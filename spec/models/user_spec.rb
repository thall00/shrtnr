require 'spec_helper'

describe User do

  let(:user) { create(:user) }

  it "should have a valid factory" do
    expect(user).to be_valid
  end
end
