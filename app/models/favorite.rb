# == Schema Information
#
# Table name: favorites
#
#  id          :integer          not null, primary key
#  url         :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#  language    :string
#  owner       :string
#

class Favorite < ActiveRecord::Base
  # belongs_to :user
end
