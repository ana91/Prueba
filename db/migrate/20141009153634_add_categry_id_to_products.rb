class AddCategryIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :categry_id, :integer
  end
end
