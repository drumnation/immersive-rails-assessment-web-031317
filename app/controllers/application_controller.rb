class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in

  private

  def current_user
    session[:name]
  end

  def logged_in
    unless session.include? :name
      redirect_to login_path
    end
  end

end
