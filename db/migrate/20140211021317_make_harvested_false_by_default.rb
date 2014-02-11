class MakeHarvestedFalseByDefault < ActiveRecord::Migration
  def change
    remove_column :plantings, :harvested
    add_column :plantings, :harvested, :boolean, default: false
  end
end
