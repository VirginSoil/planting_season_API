class AddCoordinatesToPlanting < ActiveRecord::Migration
  def change
    add_column :plantings, :x_coord, :integer
    add_column :plantings, :y_coord, :integer
  end
end
