# == Schema Information
#
# Table name: pythonquizzes
#
#  id         :integer          not null, primary key
#  question   :text
#  ans1       :text
#  ans2       :text
#  ans3       :text
#  ans4       :text
#  correctAns :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pythonquiz < ActiveRecord::Base
validates_presence_of :question,:ans1,:ans2,:ans3,:ans4
	validates_numericality_of :correctAns
end
