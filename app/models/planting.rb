class Planting < ActiveRecord::Base

  validates :bed_id, presence: true
  validates :plant_id, presence: true
  validates :planting_date, presence: true
  validates :x_coord, presence: true
  validates :y_coord, presence: true
  belongs_to :bed
end
