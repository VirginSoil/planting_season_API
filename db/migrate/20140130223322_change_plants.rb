class ChangePlants < ActiveRecord::Migration
  def change
    remove_column :plants, :string
    remove_column :plants, :spacing
    add_column :plants, :spacing, :string
  end
end
