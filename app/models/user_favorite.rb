# == Schema Information
#
# Table name: user_favorites
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner      :string
#  language   :string
#  url        :string
#

class UserFavorite < ActiveRecord::Base
	
end
