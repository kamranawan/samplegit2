# == Schema Information
#
# Table name: order_lots
#
#  id            :integer          not null, primary key
#  number_of_lot :integer
#  lot_rate      :integer
#  design_id     :integer
#  order_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class OrderLot < ApplicationRecord
  belongs_to :design
  belongs_to :order
end
