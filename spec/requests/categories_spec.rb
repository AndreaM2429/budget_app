require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  let(:user) { create(:user) }
  describe 'GET categories/index' do
    before do
      sign_in user
      get categories_path
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render the template categories/index' do
      expect(response.body).to render_template('categories/index')
    end
  end

  describe 'GET categories/new' do
    before do
      sign_in user
      get new_category_path
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render the template categories/new' do
      expect(response.body).to render_template('categories/new')
    end
  end
end
