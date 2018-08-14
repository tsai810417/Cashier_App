class AddBalanceToOrderTable < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :balance_cents, :integer, default: 0, null: false
  end
end
