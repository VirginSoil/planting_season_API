class CreateBeds < ActiveRecord::Migration
  def change
    create_table :beds do |t|
      t.string :name
      t.integer :garden_id
      t.integer :width
      t.integer :depth

      t.timestamps
    end
  end
end
