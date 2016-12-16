# == Schema Information
#
# Table name: purchasings
#
#  id          :integer          not null, primary key
#  supplier_id :integer
#  total_bill  :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Purchasing < ApplicationRecord
  belongs_to :supplier
  has_many :purchase_items
  accepts_nested_attributes_for :purchase_items, reject_if: :all_blank




end
