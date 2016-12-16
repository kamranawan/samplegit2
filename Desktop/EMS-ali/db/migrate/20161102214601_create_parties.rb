class CreateParties < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :ph_no
      t.attachment :avatar
      t.string :address

      t.timestamps
    end
  end
end
