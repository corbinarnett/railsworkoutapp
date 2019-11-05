class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :title
      t.datetime :date
      t.string :feeling
      t.boolean :complete
      t.belongs_to :workout_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
