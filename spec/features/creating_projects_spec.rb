require "spec_helper"

feature 'Creating projects' do
  scenario 'can create a new project' do
    visit '/'

    click_link 'New Project'

    fill_in 'Name', with: 'TextMate 2'
    fill_in 'Description', with: "A text editor for OSX"

    click_button 'Create Project'

    expect(page).to have_content('Project has been sucessfully created.')
  end
end