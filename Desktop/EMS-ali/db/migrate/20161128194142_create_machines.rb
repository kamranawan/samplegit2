class CreateMachines < ActiveRecord::Migration[5.0]
  def change
    create_table :machines do |t|
      t.string :name
      t.date :purchasing_date
      t.integer :price
      t.string :model
      t.integer :no_of_heads

      t.timestamps
    end
  end
end
