class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.integer :quantity
      t.integer :item_id
      t.integer :itemizable_id
      t.string :itemizable_type

      t.timestamps null: false
    end

    add_index :containers, [:itemizable_id, :itemizable_type]
  end
end
