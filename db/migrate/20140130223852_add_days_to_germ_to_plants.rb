class AddDaysToGermToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :days_to_germination, :string
  end
end
