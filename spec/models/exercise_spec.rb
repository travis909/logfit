require 'rails_helper'

RSpec.describe Exercise, type: :model do
  let(:exercise) { FactoryBot.build(:exercise) }
  context 'attributes' do
    it 'should have a name' do
      expect(exercise.name).to eq('push-ups')
    end
    it 'should have a reps' do
      expect(exercise.reps).to eq(10)
    end
    it 'should have a weight' do
      expect(exercise.weight).to eq(150)
    end
    it 'should have a weight_unit' do
      expect(exercise.weight_unit).to eq('lbs')
    end
    it 'should have a hours' do
      expect(exercise.hours).to eq(0)
    end
    it 'should have a minutes' do
      expect(exercise.minutes).to eq(10)
    end
    it 'should have a seconds' do
      expect(exercise.seconds).to eq(0)
    end
  end

  context 'validation tests' do
    describe name do
      it 'should ensure that a name is present' do
        expect(exercise).to be_valid
        exercise.name = nil
        expect(exercise).to_not be_valid
      end
    end
    describe 'workout' do
      it 'should have an associated workout' do
        exercise = create(:exercise)
        expect(exercise).to be_valid
        exercise.workout_id = nil
        expect(exercise).to_not be_valid
      end
    end
  end

  context 'scope tests' do

  end
end
