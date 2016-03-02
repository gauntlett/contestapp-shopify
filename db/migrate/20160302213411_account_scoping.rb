class AccountScoping < ActiveRecord::Migration
  def change
    add_column :orders,   :account_id, :integer, :limit => 8
    add_column :products, :account_id, :integer, :limit => 8
    add_column :contests, :account_id, :integer, :limit => 8
    add_index :orders,   :account_id
    add_index :products, :account_id
    add_index :contests, :account_id
  end
end
