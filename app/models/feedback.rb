# == Schema Information
#
# Table name: feedbacks
#
#  id         :integer          not null, primary key
#  comment    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Feedback < ActiveRecord::Base
end
