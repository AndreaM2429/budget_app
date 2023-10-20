require 'rails_helper'

RSpec.describe 'Category index features', type: :feature do
  let(:user) { create(:user) }

  before do
    sign_in user
  end

  it 'See the Home title' do
    visit categories_path
    expect(page).to have_content('HOME')
  end

  it 'Have an Add new category button' do
    visit categories_path
    expect(page).to have_link('Add new category')
  end

  it 'Redirect to the create new category' do
    visit categories_path
    click_link 'Add new category'
    expect(page).to have_current_path(new_category_path)
  end
end
