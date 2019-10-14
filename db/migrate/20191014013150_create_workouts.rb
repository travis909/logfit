class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.datetime :date, null: false
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
    change_table :exercises do |t|
      t.belongs_to :workout
    end
  end
end
