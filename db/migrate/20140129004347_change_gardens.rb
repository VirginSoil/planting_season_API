class ChangeGardens < ActiveRecord::Migration
  def change
    remove_column :gardens, :notifications
    add_column :gardens, :text_notifications, :boolean
    add_column :gardens, :email_notifications, :boolean
    add_column :gardens, :phone_notifications, :boolean
  end
end
