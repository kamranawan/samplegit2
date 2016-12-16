class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :phone_1
      t.string :phone_2
      t.string :address

      t.timestamps
    end
  end
end
