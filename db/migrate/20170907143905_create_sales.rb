class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.references :product, foreign_key: true
      t.integer :sale_off

      t.timestamps
    end
  end
end
