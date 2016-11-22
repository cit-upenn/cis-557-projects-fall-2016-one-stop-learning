# == Schema Information
#
# Table name: user_favorites
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  fav_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserFavorite < ActiveRecord::Base
	belongs_to :favorite
  	belongs_to :user
end
