class ChangeGardenIdToUserIdOnBeds < ActiveRecord::Migration
  def change
    remove_column :beds, :garden_id
    add_column :beds, :user_id, :integer
  end
end
