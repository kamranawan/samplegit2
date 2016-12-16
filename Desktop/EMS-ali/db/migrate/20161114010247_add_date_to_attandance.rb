class AddDateToAttandance < ActiveRecord::Migration[5.0]
  def change
  	add_column :attandances , :attendence_date , :date
  end
end
