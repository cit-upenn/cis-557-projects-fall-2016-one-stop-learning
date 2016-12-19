class LanguagesController < ApplicationController
	before_action :authenticate_user!


	def select
		@val = params[:language][:Langopt_id]
				

		case @val
		when "1"
			redirect_to languages_python_path
		when "2"
			redirect_to languages_java_path
		when "3"
			redirect_to languages_ruby_path
		when "4"
			redirect_to languages_cpp_path
		else
			redirect_to languages_ruby_path
		end
	end

end

