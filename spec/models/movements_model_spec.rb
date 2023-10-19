require 'rails_helper'

RSpec.describe Movement, type: :model do
  let(:user) { create(:user) }
  let(:category) { create(:categories, author_id: user.id) }
  let(:movement) { create(:movement, author_id: user.id) }

  describe 'Validations' do
    it 'Movement has to be valid' do
      expect(movement).to be_valid
    end
    it 'Movement has not to be valid without author' do
      expect(build(:movement)).not_to be_valid
    end
    it 'Movement has not to be valid with an amount less or equal to 0' do
      expect(build(:movement, author_id: user, amount: -1 )).not_to be_valid
      expect(build(:movement, author_id: user, amount: 0 )).not_to be_valid
    end
  end

  describe 'Validations' do
    it { should belong_to(:author) }
    it { should have_many(:category_movements) }
  end
end
