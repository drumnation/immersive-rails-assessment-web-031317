module ApplicationHelper

  def current_user
		if (logged_in?)
			return User.find(session[:user_id])
		end
	end

	def logged_in?
		return session[:user_id]
	end
  
end
