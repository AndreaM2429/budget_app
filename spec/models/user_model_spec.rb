require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  describe 'Validations' do
    it 'User has to be valid' do
      expect(user).to be_valid
    end
    it 'User has not to be valid' do
      expect(build(:user, password: '')).not_to be_valid
    end
  end

  describe 'Associations' do
    it 'should belongs to User class' do
      expect(User.reflect_on_association(:categories).macro).to eq :has_many
    end
    it 'should have many categoryMovements' do
      expect(User.reflect_on_association(:movements).macro).to eq :has_many
    end
  end

  # describe 'Validations' do
  #   it { should have_many(:categories) }
  #   it { should have_many(:movements) }
  # end
end
