require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }
  context 'attributes' do
    it 'should have a name' do
      expect(user.name).to eq('John')
    end
    it 'should have an email' do
      expect(user.email).to eq('john@gmail.com')
    end
    it 'should have a password' do
      expect(user.password).to eq('PASSWORD')
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
