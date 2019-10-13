class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.integer :reps
      t.decimal :weight
      t.string :weight_unit
      t.integer :hours
      t.integer :minutes
      t.integer :seconds
      t.timestamps
    end
  end
end
