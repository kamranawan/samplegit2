# == Schema Information
#
# Table name: purchase_items
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  code               :string(255)
#  unit_price         :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  purchasing_id      :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class PurchaseItem < ApplicationRecord
  belongs_to :purchasing
end
