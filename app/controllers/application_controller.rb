class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  def application
  		count = UserFavorite.count
  		if count > 0
	  		@links = UserFavorite.where(user_id: current_user.id)
	  		@count = UserFavorite.count
	  	end
  end
end
