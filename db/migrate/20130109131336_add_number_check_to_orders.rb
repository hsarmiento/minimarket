class AddNumberCheckToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :number_check, :string
  end
end
