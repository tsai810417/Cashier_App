class EditLineProductTable < ActiveRecord::Migration[5.2]
  def change
    add_column :line_products, :order_id, :integer, null: false
    add_column :line_products, :product_id, :integer, null: false
  end
end
