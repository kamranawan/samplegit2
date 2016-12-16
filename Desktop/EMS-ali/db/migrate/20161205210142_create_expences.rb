class CreateExpences < ActiveRecord::Migration[5.0]
  def change
    create_table :expences do |t|
      t.integer :amount
      t.string :detail
      t.date :date
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
