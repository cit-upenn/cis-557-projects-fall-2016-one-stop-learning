class LanguagesController < ApplicationController
	before_action :authenticate_user!

	# def index
	# end

	def select
		# render plain: params[:language][:Langopt_id].inspect
				
		# Langopt.all do |l|
		# 	if params[:language][:Langopt_id] == l['id'].to_s
		# 		@path = 'languages_#{l["name"].downcase}_path'
		# 		# redirect_to @path
		# 		render plain: @path
		# 		break
		# 	end
		# end
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

# render plain: params.inspect
# {"utf8"=>"✓", 
# "authenticity_token"=>"Y4GoiAf1ZtKgicRCwb
# 6hlyd8xhmeCAdae++maw0caZwb3B/NoSNSlhnalyNpASON5Pnd
# akkjEwueagv0NAEAiw==", "language"=>{"Langopt_id"=>"1"}, 
# "commit"=>"Search", "method"=>"post", "controller"=>"languages", 
# "action"=>"select"}