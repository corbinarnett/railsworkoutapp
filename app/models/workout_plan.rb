class WorkoutPlan < ApplicationRecord
  belongs_to :user 
  has_many :workouts
  has_many :exercises, through: :workouts
end
