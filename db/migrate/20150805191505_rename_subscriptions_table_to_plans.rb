class RenameSubscriptionsTableToPlans < ActiveRecord::Migration
  def change
  	rename_table :subscriptions, :plans
  end
end
