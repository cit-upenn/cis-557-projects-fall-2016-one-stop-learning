# == Schema Information
#
# Table name: favorites
#
#  id          :integer          not null, primary key
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#  language    :string
#  owner       :string
#

require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
