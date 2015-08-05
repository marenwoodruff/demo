class DropSubscriptionIdFromOrders < ActiveRecord::Migration
	def up
		add_column :orders, :plan_id, :integer
		remove_column :orders, :subscription_id, :integer
	end

	def down
		add_column :orders, :subscription_id, :integer
		remove_column :orders, :plan_id, :integer
	end
end