# == Schema Information
#
# Table name: trackings
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  food_id    :integer
#  user_id    :integer
#
class Tracking < ApplicationRecord
  belongs_to(:eater, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })
  belongs_to(:food, { :required => true, :class_name => "Food", :foreign_key => "food_id", :counter_cache => true })
end
