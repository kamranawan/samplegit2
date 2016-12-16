class AddPhoneToEmploy < ActiveRecord::Migration[5.0]
  def change
  	add_column :employs , :phone_1 , :string
  	add_column :employs , :phone_2 , :string
  end
end
