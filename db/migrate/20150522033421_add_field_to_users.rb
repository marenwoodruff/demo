class AddFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :region_id, :integer
    add_column :users, :country_id, :integer
  end
end
