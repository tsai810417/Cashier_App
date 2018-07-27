class CreateLineProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :line_products do |t|
      t.integer :quantity
      t.integer :price_cents
      
      t.timestamps
    end
  end
end
