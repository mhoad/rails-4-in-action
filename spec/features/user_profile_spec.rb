require 'spec_helper'

feature "profile page" do
  scenario "viewing" do
    user = FactoryGirl.create(:user)
    
    visit user_path(user)

    expect(page).to have_content(user.name)
    expect(page).to have_content(user.email)
  end
end

feature "Editing users" do
  scenario "Updating a profile" do
    user = FactoryGirl.create(:user)

    visit user_path(user)

    click_link "Edit Profile"

    fill_in "Username", with: "new_username"
    click_button "Update Profile"

    expect(page).to have_content("Profile has been updated.")
  end
end