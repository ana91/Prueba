class CreateCategries < ActiveRecord::Migration
  def change
    create_table :categries do |t|
      t.string :name
      t.text :descrpcion
      t.integer :price

      t.timestamps
    end
  end
end
