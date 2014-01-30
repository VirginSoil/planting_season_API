class ChangeDepthToString < ActiveRecord::Migration
  def change
    remove_column :plants, :depth
    add_column :plants, :depth, :string
  end
end
