class SessionsController < ApplicationController

  def new
    @session = session[:name]
  end

  def create
    if session_params.blank?
      redirect_to :signup
    else
      current_user = params[:name]
      redirect_to guests_path
    end
  end

  private

  def session_params
    params.permit(:user).permit(:username, :password_digest)
  end

end
