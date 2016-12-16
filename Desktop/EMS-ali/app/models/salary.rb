# == Schema Information
#
# Table name: salaries
#
#  id              :integer          not null, primary key
#  employ_id       :integer
#  bounas          :integer
#  hotel           :integer
#  advance         :integer
#  salary_recevied :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Salary < ApplicationRecord
  belongs_to :employ
  belongs_to :user
end
