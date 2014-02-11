class AddSlugToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :slug, :string
  end
end
