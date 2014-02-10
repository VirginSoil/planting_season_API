class Bed < ActiveRecord::Base
  validates :name, presence: true
  validates :depth, presence: true
  validates :width, presence: true

  has_many :plantings
end
