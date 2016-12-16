class CreateStitches < ActiveRecord::Migration[5.0]
  def change
    create_table :stitches do |t|
      t.timestamp :date
      t.integer :count
      t.belongs_to :machine, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.belongs_to :design, foreign_key: true

      t.timestamps
    end
  end
end
