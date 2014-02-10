class AddZipcodeToBeds < ActiveRecord::Migration
  def change
    add_column :beds, :zipcode, :string
  end
end
