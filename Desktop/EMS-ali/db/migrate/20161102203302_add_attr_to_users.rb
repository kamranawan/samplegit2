class AddAttrToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users , :full_name , :string
  	add_column :users , :dob , :date
  	add_column :users , :gender , :boolean
  	add_column :users , :cnic , :string
  	add_column :users , :role , :integer
  	add_column :users , :joining , :date
  end
end
