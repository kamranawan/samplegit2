# == Schema Information
#
# Table name: clippings
#
#  id         :integer          not null, primary key
#  employ_id  :integer
#  design_id  :integer
#  lots       :integer
#  status     :string(255)
#  date       :date
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Clipping < ApplicationRecord
  belongs_to :employ
  belongs_to :design
  belongs_to :user
end
