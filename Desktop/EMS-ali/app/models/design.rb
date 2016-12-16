# == Schema Information
#
# Table name: designs
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  code               :string(255)
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#

class Design < ApplicationRecord
	has_many :order_lots
	has_many :orders , through: :order_lots
	has_attached_file :photo, styles: {  thumb: "250x250" , small: "100x100" }, default_url: "/images/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
