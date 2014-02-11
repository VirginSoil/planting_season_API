class AddSlugToPlantings < ActiveRecord::Migration
  def change
    add_column :plantings, :slug, :string
  end
end
