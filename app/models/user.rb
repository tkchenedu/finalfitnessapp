# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  competitions_count :integer
#  email              :string
#  image              :string
#  password_digest    :string
#  quote              :text
#  trackings_count    :integer
#  username           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
  has_many(:trackings, { :class_name => "Tracking", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:competitions, { :class_name => "Competition", :foreign_key => "user_id", :dependent => :nullify })
end
