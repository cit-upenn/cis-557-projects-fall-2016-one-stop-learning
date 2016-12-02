# == Schema Information
#
# Table name: cppquizzes
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

require 'test_helper'

class CppquizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
