class CreateDesigns < ActiveRecord::Migration[5.0]
  def change
    create_table :designs do |t|
      t.string :name
      t.string :code
      t.attachment :photo

      t.timestamps
    end
  end
end
