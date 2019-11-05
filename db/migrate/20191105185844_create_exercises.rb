class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.integer :user_id
      t.belongs_to :workout, null: false, foreign_key: true
      t.string :name
      t.integer :number_of_sets
      t.integer :weight
      t.integer :reps

      t.timestamps
    end
  end
end
