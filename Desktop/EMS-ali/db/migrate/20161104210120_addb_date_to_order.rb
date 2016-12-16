class AddbDateToOrder < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders , :order_received , :date
  	add_column :orders , :order_delivery_date , :date
  end
end
