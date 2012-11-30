class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :phone_id
      t.integer :quantity

      t.timestamps
    end
  end
end
