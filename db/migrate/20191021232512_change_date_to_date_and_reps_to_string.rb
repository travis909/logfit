class ChangeDateToDateAndRepsToString < ActiveRecord::Migration[6.0]
  def change
    change_column :workouts, :date, :date
    change_column :exercises, :reps, :string
  end
end
