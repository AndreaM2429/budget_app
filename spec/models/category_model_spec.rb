require 'rails_helper'

RSpec.describe Categories, type: :model do
  let(:user) { create(:user) }
  let(:category) { create(:categories, author_id: user.id) }

  describe 'Validations' do
    it 'Category has to be valid' do
      expect(category).to be_valid
    end
    it 'Category has not to be valid' do
      expect(build(:categories)).not_to be_valid
    end
    it 'Category has not to be valid without icon' do
      expect(build(:categories, author_id: user.id, icon: '')).not_to be_valid
    end
  end

  describe 'Validations' do
    it { should belong_to(:author) }
    it { should have_many(:category_movements) }
    it { should have_one_attached(:icon) }
  end
end
