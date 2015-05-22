class AddFieldToUsers < ActiveRecord::Migration
  def change
    add_column :products, :region_id, :integer
    add_column :products, :country_id, :integer
  end
end
