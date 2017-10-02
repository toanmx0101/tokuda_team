class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :sale_off

      t.timestamps
    end
  end
end
