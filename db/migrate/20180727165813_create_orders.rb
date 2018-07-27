class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :table
      t.integer :quantity
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
