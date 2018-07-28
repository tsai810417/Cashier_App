class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :paid, :default => false, :null => false
      t.integer :subtatol_cents, :default => 0, :null => false
      t.integer :tax_cents, :default => 0, :null => false
      t.float :tax_rate, :null => false

      t.timestamps
    end
  end
end
