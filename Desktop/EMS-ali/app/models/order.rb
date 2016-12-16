# == Schema Information
#
# Table name: orders
#
#  id                  :integer          not null, primary key
#  advance             :integer
#  balance             :integer
#  party_id            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  total               :integer
#  order_received      :date
#  order_delivery_date :date
#  user_id             :integer
#

class Order < ApplicationRecord
  belongs_to :party
  has_many :order_lots , :dependent => :destroy
	accepts_nested_attributes_for :order_lots, reject_if: :all_blank



end
