class DropOrderIdFromSubscriptions < ActiveRecord::Migration
  def change
  	remove_column :subscriptions, :order_id, :integer
  end
end
