class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :string
      t.integer :spacing
      t.integer :depth
      t.string :days_to_harvest
      t.string :age_of_transplant
      t.boolean :warm_season

      t.timestamps
    end
  end
end
