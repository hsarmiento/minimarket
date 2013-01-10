class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :provider_id
      t.timestamp :received_at
      t.timestamp :pay_at
      t.integer :pay_type
      t.float :amount

      t.timestamps
    end

    add_index :orders, [:provider_id, :received_at]
  end
end
