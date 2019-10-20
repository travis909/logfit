class AddWorkoutReferenceToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.references :workout, foreign_key: true
    end
    change_table :workouts do |t|
      t.belongs_to :user, null: false, foreign_key: true
    end
    add_index :workouts, %i[user_id date]
  end
end
