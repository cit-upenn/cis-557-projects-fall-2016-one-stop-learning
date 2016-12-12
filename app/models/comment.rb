# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  title      :string
#  author     :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  parent_id  :integer
#

class Comment < ActiveRecord::Base
	acts_as_tree order: 'created_at DESC'
end
