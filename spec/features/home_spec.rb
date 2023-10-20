require 'rails_helper'

RSpec.describe 'Home (Splash screen)', type: :feature do
  it 'See the app name' do
    visit root_path
    expect(page).to have_content('GeldSpar')
  end

  it 'See the log in and sign up buttons' do
    visit root_path
    expect(page).to have_content('LOG IN')
    expect(page).to have_content('SIGN UP')
  end

  it 'Redirect to sign in page when the user click the LOG IN button' do
    visit root_path
    click_link 'LOG IN'
    expect(page).to have_current_path(new_user_session_path)
  end

  it 'Redirect to sign up page when the user click the SIGN UP button' do
    visit root_path
    click_link 'SIGN UP'
    expect(page).to have_current_path(new_user_registration_path)
  end
end
