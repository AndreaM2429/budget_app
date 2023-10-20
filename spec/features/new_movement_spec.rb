require 'rails_helper'

RSpec.describe 'Category index features', type: :feature do
  let(:user) { create(:user) }
  let(:category) { create(:categories, author_id: user.id) }

  it 'See the correct title' do
    sign_in user
    visit new_category_movement_path(category.id)
    expect(page).to have_content('ADD MOVEMENT')
  end

  it 'Create a new category' do
    sign_in user
    visit new_category_movement_path(category.id)

    fill_in 'Movement name', with: 'Movement 1'
    fill_in 'Amount', with: 12.3

    select 'Food', from: 'movement_category', match: :first
    click_button 'Save movement'

    expect(page).to have_content('MOVEMENTS')
  end
end