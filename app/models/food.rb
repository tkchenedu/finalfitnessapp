# == Schema Information
#
# Table name: foods
#
#  id              :integer          not null, primary key
#  calories        :integer
#  carb            :integer
#  fat             :integer
#  grams           :integer
#  image           :string
#  name            :string
#  protein         :integer
#  trackings_count :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Food < ApplicationRecord
  has_many(:trackings, { :class_name => "Tracking", :foreign_key => "food_id" })
end
