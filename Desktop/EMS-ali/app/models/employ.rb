# == Schema Information
#
# Table name: employs
#
#  id                  :integer          not null, primary key
#  full_name           :string(255)
#  father_name         :string(255)
#  dob                 :date
#  gender              :boolean
#  cnic                :string(255)
#  address             :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  material_status     :boolean
#  designation         :string(255)
#  basic_salary        :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  phone_1             :string(255)
#  phone_2             :string(255)
#  user_id             :integer
#

class Employ < ApplicationRecord
	has_many :salaries
	has_attached_file :avatar, styles: {  thumb: "250x250" , small: "100x100" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def attendance_count
  	if Attandance.where("attendence_date >= ?",Time.now.beginning_of_month).present?
			sunday = (Date.today.beginning_of_month..Date.today).group_by(&:wday)
			attand = Attandance.where.not(attendence_date: sunday[0])
			 attandance = attand.where("attendence_date >= ?",Time.now.beginning_of_month )
			 id_count = Employ.attadance_count(attandance ,self.id)
		end
		 return id_count
  end
	

		def self.attadance_count(month_attadance , id)
				count = 0
				month_attadance.each do |at|
					if at.employ_ids.include?("(#{id},Present)")
						 count += 1
					end
				end
				return count
		end

		def current_salary(days)
			one_day_salary = self.basic_salary / Time.now.end_of_month.day
			cu_salary = one_day_salary*days
		end

		def sunday_count
			sunday = (Date.today.beginning_of_month..Date.today).group_by(&:wday)
			attand = Attandance.where(attendence_date: sunday[0])
			id_count = Employ.attadance_count(attand ,self.id)
		end

		def over_time(sundays)
			one_day_salary = self.basic_salary / Time.now.end_of_month.day
			cu_salary = (one_day_salary*1.5)*sundays
			return cu_salary.ceil
		end

		def gross_salary(current_salary , over_time , emp_id)			
			if Salary.where(employ_id: emp_id).present?
				employ_sal = Salary.where(employ_id: emp_id)
				if employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now ).present?
					this_month_salary = employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now )
					gross = this_month_salary[0].bounas + 	current_salary + over_time
				else 
				gross = current_salary + over_time	
				end
			else
				gross = current_salary + over_time
			end
		end

		def bouns_this_month(employ_id)
			b = 0
			if Salary.where(employ_id: employ_id).present?
				employ_sal = Salary.where(employ_id: employ_id)
				if employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now ).present?
					this_month = employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now )
					b = this_month[0].bounas
				end
			end
			return b
		end

		def hotel_payment(employ_id)
			b = 0
			if Salary.where(employ_id: employ_id).present?
				employ_sal = Salary.where(employ_id: employ_id)
				if employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now ).present?
					this_month = employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now )
					b = this_month[0].hotel
				end
			end
			return b
		end

		def advance_payment(employ_id)
			b = 0
			if Salary.where(employ_id: employ_id).present?
				employ_sal = Salary.where(employ_id: employ_id)
				if employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now ).present?
					this_month = employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now )
					b = this_month[0].advance
				end
			end
			return b
		end

		def delivered_payment(employ_id)
			b = 0
			if Salary.where(employ_id: employ_id).present?
				employ_sal = Salary.where(employ_id: employ_id)
				if employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now ).present?
					this_month = employ_sal.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now )
					b = this_month[0].salary_recevied
				end
			end
			return b
		end
	
	def self.this_mont_not_set
    array = []
    if Salary.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now ).present?
			this_month = Salary.where("created_at >? and created_at <? ", Time.now.beginning_of_month , Time.now )
			this_month.each do |s|
				array << s.employ_id
			end
		end
		return array
  end

	end