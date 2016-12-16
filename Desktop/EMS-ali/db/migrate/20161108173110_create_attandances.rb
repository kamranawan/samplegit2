class CreateAttandances < ActiveRecord::Migration[5.0]
  def change
    create_table :attandances do |t|
      t.text :employ_ids

      t.timestamps
    end
  end
end
