class RemoveRowAndColFromPlantings < ActiveRecord::Migration
  def change
    remove_column :plantings, :row
    remove_column :plantings, :column
  end
end
