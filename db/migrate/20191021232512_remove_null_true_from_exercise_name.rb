class RemoveNullTrueFromExerciseName < ActiveRecord::Migration[6.0]
  def up
    change_column_null :exercises, :name, true
  end

  def down
    change_column_null :exercises, :name, false
  end
end
