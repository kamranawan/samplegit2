# == Schema Information
#
# Table name: parties
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  ph_no               :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  address             :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#

class Party < ApplicationRecord
	has_many :party_members  , :dependent => :destroy
	has_many :orders, :dependent => :destroy
	has_attached_file :avatar, styles: {  thumb: "250x250" , small: "100x100" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
