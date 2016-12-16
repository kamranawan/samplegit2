class CreateEmploys < ActiveRecord::Migration[5.0]
  def change
    create_table :employs do |t|
      t.string :full_name
      t.string :father_name
      t.date :dob
      t.boolean :gender
      t.string :cnic
      t.string :address
      t.attachment :avatar
      t.boolean :material_status
      t.string :designation
      t.integer :basic_salary

      t.timestamps
    end
  end
end
