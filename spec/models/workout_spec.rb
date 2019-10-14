require 'rails_helper'

RSpec.describe Workout, type: :model do
  let(:workout) { FactoryBot.build(:workout) }
  context 'attributes' do
    it 'should have a date' do
      expect(workout.date).to eq('2019-10-13 21:32:21')
    end
    it 'should have a exercises' do

    end
  end

  context 'validation tests' do
    describe name do
      it 'should ensure that a date is present' do
        expect(workout).to be_valid
        workout.date = nil
        expect(workout).to_not be_valid
      end
    end
  end

  context 'scope tests' do

  end
end
