class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.integer :product_id,           limit: => 8
      t.datetime :start_date
      t.datetime :end_date
      t.integer :max_results
      t.integer :order_id,           limit: => 8

      t.timestamps
    end
    add_index :contests, :order_id
  end
end
