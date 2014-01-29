class Garden < ActiveRecord::Base
  validates :user_id, presence: true
  has_many :beds
end
