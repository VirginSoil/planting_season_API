class AddXAndYToPlantings < ActiveRecord::Migration
  def change
    add_column :plantings, :x, :string
    add_column :plantings, :y, :string
  end
end
