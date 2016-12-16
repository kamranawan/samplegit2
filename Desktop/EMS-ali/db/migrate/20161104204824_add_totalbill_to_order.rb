class AddTotalbillToOrder < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders , :total , :integer
  end
end
