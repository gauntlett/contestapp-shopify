class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id,           limit: => 8
      t.integer :variant_id,           limit: => 8
      t.integer :shopify_product_id,           limit: => 8
      t.integer :shopify_variant_id,           limit: => 8
      t.float :unit_price
      t.integer :quantity

      t.timestamps null: false
    end
    add_index :order_items, :order_id
    add_index :order_items, :variant_id
    add_index :order_items, :shopify_variant_id
  end
end
