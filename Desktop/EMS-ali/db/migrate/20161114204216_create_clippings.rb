class CreateClippings < ActiveRecord::Migration[5.0]
  def change
    create_table :clippings do |t|
      t.references :employ, foreign_key: true
      t.references :design, foreign_key: true
      t.integer :lots
      t.string :status
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
