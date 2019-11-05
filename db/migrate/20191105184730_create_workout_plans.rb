class CreateWorkoutPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_plans do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end
