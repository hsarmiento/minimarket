class AddReceivedAtToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :received_at, :timestamp
  end
end
