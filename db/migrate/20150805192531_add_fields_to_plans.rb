class AddFieldsToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :name, :string
    add_column :plans, :price, :decimal
  end
end
