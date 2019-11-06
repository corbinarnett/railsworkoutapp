class WorkoutsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @workout = Workout.new
  end

  def create
    # byebug
  end

  private

  def workout_params
    # workout"=>{"title"=>"Push", "feeling"=>"Strong", "complete"=>"0"}
    params.require(:workout).permit(:title, :feeling, :complete)
  end
end
