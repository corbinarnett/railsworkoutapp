class User < ApplicationRecord
  has_many :exercises
  has_many :workout_plans
  has_many :workouts, through: :workout_plans
  #bycrpt gem macro
  has_secure_password
end
