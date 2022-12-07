# == Schema Information
#
# Table name: competitions
#
#  id          :integer          not null, primary key
#  goal        :integer
#  goalprotein :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Competition < ApplicationRecord
  belongs_to(:starter, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })
end
