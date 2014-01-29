class CreatePlantings < ActiveRecord::Migration
  def change
    create_table :plantings do |t|
      t.integer :bed_id
      t.integer :plant_id
      t.date :planting_date
      t.date :estimated_harvest_date
      t.boolean :harvested

      t.timestamps
    end
  end
end
