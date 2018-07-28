class AddSugarIceToLineProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :line_products, :sugar, :string, default: '100', null: false
    add_column :line_products, :ice, :string, default: '100', null: false
  end
end
