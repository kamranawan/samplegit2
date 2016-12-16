# == Schema Information
#
# Table name: machines
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  purchasing_date :date
#  price           :integer
#  model           :string(255)
#  no_of_heads     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Machine < ApplicationRecord
	has_many :stitches
end
