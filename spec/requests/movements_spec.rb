require 'rails_helper'

RSpec.describe 'Movements', type: :request do
  let(:user) { create(:user) }
  let(:category) { create(:categories, author_id: user.id) }
  describe 'GET movements/index' do
    before do
      sign_in user
      get category_movements_path(category.id)
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render the template movements/index' do
      expect(response.body).to render_template('movements/index')
    end
  end

  describe 'GET categories/new' do
    before do
      sign_in user
      get new_category_movement_path(category.id)
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render the template movements/new' do
      expect(response.body).to render_template('movements/new')
    end
  end
end
