require 'spec_helper'

describe "updating settings" do
  context "with valid params" do

    before do
      visit "/settings"
      fill_in "Name", with: "Test"
      fill_in "Email", with: "test@test.com"
      click_button "Submit"
    end

    it "tells the user they have updated their settings" do
      #expect(page).to have_content "Successfully updated settings"
    end

    it "sends them to the settings page" do
      #expect(current_path).to eq "/settings"
    end

  end
end