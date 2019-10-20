require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }
  context 'attributes' do
    it 'should have a name' do
      user.name = nil
      expect(user).to_not be_valid
    end
    it 'should have an email' do
      user.email = nil
      expect(user).to_not be_valid
    end
    it 'should have a password' do
      expect(user.password).to eq('PASSWORD')
      user.password = nil
      expect(user).to_not be_valid
    end
    it 'can have multiple workouts' do
      user = create(:user)
      create(:workout, date: '2019-10-02', user_id: user.id)
      create(:workout, date: '2019-10-01', user_id: user.id)
      expect(user.workouts.count).to eq(2)
    end
  end
  context 'validation tests' do
    describe name do
      it 'should ensure that a name is present' do
        expect(user).to be_valid
        user.name = nil
        expect(user).to_not be_valid
      end
    end
  end
end
