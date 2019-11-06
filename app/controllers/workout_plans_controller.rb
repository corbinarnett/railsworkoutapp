class WorkoutPlansController < ApplicationController
  
  def index
    @workout_plans = current_user.workout_plans
  end

  def show
    @workout_plan = WorkoutPlan.find_by(params[:id])
  end

  def new
    @workout_plan = WorkoutPlan.new
  end

  def create
    byebug
    @workout_plan = current_user.workout_plans.build(workout_plan_params)
    if @workout_plan.save
      redirect_to workout_plan_path(@workout_plan)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private 

  def workout_plan_params
    params.require(:workout_plan).permit(:title, :description, :active)
  end
end
