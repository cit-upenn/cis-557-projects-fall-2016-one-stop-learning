class FavoritesController < ApplicationController

	def index
		@fav = UserFavorite.where(user_id: current_user.id)
		@show = true
	end


	def add
		if (params[:type])
			UserFavorite.where(user_id: current_user.id, url: params[:url]).delete_all
			respond_to do |format|
	       		format.html { redirect_to languages_favorite_path}
			end
		else
			if (params[:url] != '')
				url = params[:url]
				new_url = 'https://www.youtube.com/embed/'+url[-11..-1]+'?controls=1'
				@new = UserFavorite.new(user_id: current_user.id, url: new_url, owner: current_user.email, language: params[:lang])
				respond_to do |format|
				      		if @new.save
				       			 format.html { redirect_to languages_favorite_path}
							end
						end
					else
						redirect_to languages_favorite_path, notice: 'Please enter a valid link.'
					end
		end
	end
end

