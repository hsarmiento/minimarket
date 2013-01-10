class RemoveReceivedAtToOrder < ActiveRecord::Migration
  def up
    remove_column :orders, :received_at
  end

  def down
    add_column :orders, :received_at, :timestamp
  end
end
