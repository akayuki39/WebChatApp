class SessionsController < ApplicationController

  include Authentication

  def new
    @users = User.all
  end

  def create
    log_in(User.find(params[:user_id]))
    redirect_to rooms_path
  end

  def destroy
    log_out
  end
end
