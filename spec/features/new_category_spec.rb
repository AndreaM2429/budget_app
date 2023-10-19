require 'rails_helper'

RSpec.describe 'Category index features', type: :feature do
  let(:user) { create(:user) }

  before do
    sign_in user
  end

  it 'See the Home title' do
    visit new_category_path
    expect(page).to have_content('ADD CATEGORY')
  end

  it 'Create a new category' do
    visit new_category_path

    fill_in 'Category name', with: 'Food'
    attach_file 'Select file', Rails.root.join('spec/icon_tests/food.jpg')
    click_button 'Save category'

    expect(page).to have_current_path(categories_path)
  end
end
