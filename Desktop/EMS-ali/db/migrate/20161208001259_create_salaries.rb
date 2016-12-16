class CreateSalaries < ActiveRecord::Migration[5.0]
  def change
    create_table :salaries do |t|
      t.references :employ, foreign_key: true
      t.integer :bounas
      t.integer :hotel
      t.integer :advance
      t.integer :salary_recevied
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
