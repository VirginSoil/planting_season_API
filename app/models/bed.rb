class Bed < ActiveRecord::Base
  validates :garden_id, presence: true
  validates :name, presence: true
  validates :depth, presence: true
  validates :width, presence: true

  belongs_to :garden

end
