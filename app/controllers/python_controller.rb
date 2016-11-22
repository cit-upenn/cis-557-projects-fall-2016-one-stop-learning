class PythonController < ApplicationController
	
	def index
		@favorites = Favorite.where(language: 'Python')
	end

	def favorite
		if params[:type] == 'favorite'
			if not UserFavorite.exists?(user_id: current_user.id, url: params[:url])
				@favorite = UserFavorite.new(user_id: current_user.id, url: params[:url], owner: params[:owner], language: params[:lang])
				respond_to do |format|
		      		if @favorite.save
		       			 format.html { redirect_to languages_python_path}
					end
				end
			else
				redirect_to languages_python_path
			end
		elsif params[:type] == 'unfavorite'
			UserFavorite.where(user_id: current_user.id, url: params[:url]).delete_all
			respond_to do |format|
	       		format.html { redirect_to languages_python_path}
			end		
		end
	end
end
