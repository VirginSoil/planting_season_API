class AddTemperatureToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :germination_temperature, :string
  end
end
