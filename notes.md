User
Username:string
Email:string
Password_digest:string
Has_many :workout_plans
Has_many :workouts, through: workout_plans
Has_many :exercises (they created)


Workout Plan  (Push Pull Legs, Full-Body, Upper/Lower)
Belongs_to :user
Has_many :workouts
has _many :exercises, through: workouts
Title:string
Description:text_field 
active:boolean


Workout (Chest, Shoulders, Arms, Legs)
Title:String
Date: datetime
Feeling:string
Belongs_to :workout_plan
Has_many :exercises
Complete:boolean default: false


Exercise (Bench Press, Bicep Curl, Etc)
Belongs_to :user
belongs _to :workout
name:string
Number_of_sets:integer
Weight:integer
Reps:integer
