# == Schema Information
#
# Table name: stitches
#
#  id         :integer          not null, primary key
#  date       :datetime
#  count      :integer
#  machine_id :integer
#  user_id    :integer
#  design_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stitch < ApplicationRecord
  belongs_to :machine
  belongs_to :user
  belongs_to :design
end
