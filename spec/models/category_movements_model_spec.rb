require 'rails_helper'

RSpec.describe CategoryMovement, type: :model do
  let(:user) { create(:user) }
  let(:category) { create(:categories, author_id: user.id) }
  let(:movement) { create(:movement, author_id: user.id) }
  let(:category_movement) { CategoryMovement.create(category_id: category.id, movements_id: movement.id) }

  describe 'Validations' do
    it 'CategoryMovement has to be valid' do
      expect(category_movement).to be_valid
    end
    it 'CategoryMovement has not to be valid without category' do
      expect(CategoryMovement.build(movements_id: movement.id)).not_to be_valid
    end
    it 'CategoryMovement has not to be valid with movement' do
      expect(CategoryMovement.build(category_id: category.id)).not_to be_valid
    end
  end
end
