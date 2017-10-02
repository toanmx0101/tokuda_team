class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.string :size
      t.string :color
      t.integer :number

      t.timestamps
    end
  end
end
