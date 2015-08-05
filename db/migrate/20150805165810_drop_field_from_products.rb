class DropFieldFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :country_id, :integer
  end
end
