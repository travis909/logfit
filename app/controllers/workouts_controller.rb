# frozen_string_literal: true

class WorkoutsController < ApplicationController
  before_action :require_login

  def index
    @workouts = current_user.workouts.order(:date)
    @workouts_by_date = @workouts.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def show
    @workout = current_user.workouts.find(params[:id])
    @formatted_workout_date =
      "#{current_user.workouts.find(params[:id]).date.strftime('%B')}, #{current_user.workouts.find(params[:id]).date.day}, #{current_user.workouts.find(params[:id]).date.year}"
  end

  def new
    #@workout = current_user.workouts.build(user_id: current_user.id)
    @workout = current_user.workouts.build(date: Date.today)
  end

  def create
    @workout = current_user.workouts.update(workout_params)
    if @workout.save
      redirect_to @workout, notice: 'Workout was successfully created.'
    else
      @errors = @workout.errors.full_messages
      redirect_to new_workout_path, notice: @errors
    end
  end

  def edit
    @workout = current_user.workouts.find(params[:id])
  end

  def update
    @workout = current_user.workouts.find(params[:id])

    if @workout.update_attributes(workout_params)
      redirect_to workout_path(@workout), notice: 'Workout Updated'
    else
      @errors = @workout.errors.full_messages
      render :edit
    end
  end

  def destroy
    workout = current_user.workouts.find(params[:id])
    workout.destroy
    redirect_to workouts_path, notice: "Deleted Workout On: #{workout.date}"
  end

  private

  def workout_params
    params.require(:workout).permit(:date, exercises_attributes: %i[_destroy id name reps weight weight_unit hours minutes seconds])
  end
end
