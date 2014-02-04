class ChangeXAndYToRowAndColumnForPlantings < ActiveRecord::Migration
  def change
    rename_column :plantings, :x, :row
    rename_column :plantings, :y, :column
  end
end
