class JavaController < ApplicationController
	def index
		@favorites = Favorite.where(language: 'Java')
	end

	def favorite
		if params[:type] == 'favorite'
			if not UserFavorite.exists?(user_id: current_user.id, fav_id: params[:id])
				@favorite = UserFavorite.new(user_id: current_user.id, fav_id: params[:id])
				respond_to do |format|
		      		if @favorite.save
		       			 format.html { redirect_to languages_java_path}
					end
				end
			else
				redirect_to languages_java_path
			end
		elsif params[:type] == 'unfavorite'
			UserFavorite.where(user_id: current_user.id, fav_id: params[:id]).delete_all
			respond_to do |format|
	       		format.html { redirect_to languages_java_path}
			end		
		end
	end
end
