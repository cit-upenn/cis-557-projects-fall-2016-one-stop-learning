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

require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
