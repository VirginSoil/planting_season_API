class CreateGardens < ActiveRecord::Migration
  def change
    create_table :gardens do |t|
      t.integer :user_id
      t.string :zone
      t.string :notifications

      t.timestamps
    end
  end
end
