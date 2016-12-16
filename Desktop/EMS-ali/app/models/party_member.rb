# == Schema Information
#
# Table name: party_members
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  phone_1             :string(255)
#  phone_2             :string(255)
#  cnic                :string(255)
#  address             :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  party_id            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#

class PartyMember < ApplicationRecord
  belongs_to :party
  has_many :party_members
	has_attached_file :avatar, styles: {  thumb: "250x250" ,
	small: "100x100" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
