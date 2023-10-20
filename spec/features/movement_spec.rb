require 'rails_helper'

RSpec.describe 'Category index features', type: :feature do
  let(:user) { create(:user) }
  let(:category) { create(:categories, author_id: user.id) }

  before do
    sign_in user
  end

  it 'See the Movements title' do
    visit category_movements_path(category.id)
    expect(page).to have_content('MOVEMENTS')
  end

  it 'See the category name' do
    visit category_movements_path(category.id)
    expect(page).to have_content('Food')
  end

  it 'Have an Add a new transaction button' do
    visit category_movements_path(category.id)
    expect(page).to have_link('Add a new movement')
  end

  it 'Redirect to the create new category' do
    visit category_movements_path(category.id)
    click_link 'Add a new movement'
    expect(page).to have_current_path(new_category_movement_path(category.id))
  end
end
