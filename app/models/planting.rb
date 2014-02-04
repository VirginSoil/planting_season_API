class Planting < ActiveRecord::Base

  validates :bed_id, presence: true
  validates :plant_id, presence: true
  validates :planting_date, presence: true
  validates :row, :column, presence: true
  belongs_to :bed
end
