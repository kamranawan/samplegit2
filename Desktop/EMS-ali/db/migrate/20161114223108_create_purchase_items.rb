class CreatePurchaseItems < ActiveRecord::Migration[5.0]
  def change
    create_table :purchase_items do |t|
      t.string :name
      t.string :code
      t.integer :unit_price
      t.attachment :image
      t.belongs_to :purchasing, foreign_key: true

      t.timestamps
    end
  end
end
