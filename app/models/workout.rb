class Workout < ApplicationRecord
  belongs_to :workout_plan
  has_many :exercises
end
