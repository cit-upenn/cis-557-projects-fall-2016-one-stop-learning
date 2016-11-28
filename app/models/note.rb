# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  subject    :string
#  text       :string
#  priority   :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Note < ActiveRecord::Base
  belongs_to :user

  validates :subject, :presence => true, :length => { :in => 1..20 }
  validates :text, :presence => true
  validates :priority, :presence => true
end
