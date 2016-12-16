# == Schema Information
#
# Table name: expences
#
#  id         :integer          not null, primary key
#  amount     :integer
#  detail     :string(255)
#  date       :date
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Expence < ApplicationRecord
end
