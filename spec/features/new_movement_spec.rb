require 'rails_helper'

RSpec.describe 'Category index features', type: :feature do
  let(:user) { create(:user) }
  let(:category) { create(:categories, author_id: user.id) }

  before do
    sign_in user
  end

  it 'See the correct title' do
    visit new_category_movement_path(category.id)
    expect(page).to have_content('ADD MOVEMENT')
  end

  it 'Create a new category' do
    visit new_category_movement_path(category.id)

    fill_in 'Movement name', with: 'Food'
    fill_in 'Amount', with: 12.3
    select 'Food', from: 'movement[category]'
    click_button 'Save movement'

    expect(page).to have_current_path(category_movements_path(category.id))
  end
end
