class AddAmountToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :amount, :integer, null: false, default: 1
  end
end
