class CreatePurchasings < ActiveRecord::Migration[5.0]
  def change
    create_table :purchasings do |t|
      t.references :supplier, foreign_key: true
      t.string :total_bill

      t.timestamps
    end
  end
end
