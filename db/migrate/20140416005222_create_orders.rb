class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :subtotal, precision: 11, scale: 2
      t.decimal :tax, precision: 11, scale: 2
      t.decimal :shipping, precision: 11, scale: 2
      t.decimal :total, precision: 11, scale: 2
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
