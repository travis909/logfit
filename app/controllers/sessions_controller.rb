class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to workouts_path
    else
      flash[:errors] = ['Invalid Combination']
      redirect_to root_path
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end
end