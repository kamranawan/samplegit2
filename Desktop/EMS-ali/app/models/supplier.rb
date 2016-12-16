# == Schema Information
#
# Table name: suppliers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone_1    :string(255)
#  phone_2    :string(255)
#  address    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Supplier < ApplicationRecord
end
