class AddUseridToAll < ActiveRecord::Migration[5.0]
  def change
  	add_column :attandances , :user_id , :integer
  	add_column :designs , :user_id , :integer
  	add_column :employs , :user_id , :integer
  	add_column :orders , :user_id , :integer
  	add_column :parties , :user_id , :integer
  	add_column :party_members , :user_id , :integer
  	add_column :purchasings , :user_id , :integer
  	add_column :suppliers , :user_id , :integer

  end
end
