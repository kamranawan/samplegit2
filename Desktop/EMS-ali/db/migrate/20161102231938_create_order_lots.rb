class CreateOrderLots < ActiveRecord::Migration[5.0]
  def change
    create_table :order_lots do |t|
      t.integer :number_of_lot
      t.integer :lot_rate
      t.references :design, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
