class AddNotesToBeds < ActiveRecord::Migration
  def change
    add_column :beds, :notes, :text
  end
end
