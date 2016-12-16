# == Schema Information
#
# Table name: attandances
#
#  id              :integer          not null, primary key
#  employ_ids      :text(65535)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  attendence_date :date
#  user_id         :integer
#

class Attandance < ApplicationRecord

	def self.save_attadance(attadance , date , current_user)
		todays_attadance =  Attandance.where("attendence_date = ?",date).present?
		if todays_attadance 
			today = Attandance.where("attendence_date = ?", date)
			today[0].employ_ids = attadance
			today[0].attendence_date = date
			today[0].user_id = current_user.id
			today[0].save!
		else
			Attandance.create(employ_ids: attadance , attendence_date: date , user_id: current_user.id)
		end
	end

	def self.todays_alerts
		alert = []
		if !Attandance.where("attendence_date >= ?",Time.now.beginning_of_day).present?
			alert << "Todays Attadance Remains"
		end
		if Order.where("order_delivery_date = ?" , Date.today).present?
			today_delever_order = Order.where("order_delivery_date = ?" , Date.today)
			today_delever_order.each do |o|
				alert << "#{o.party.name}'s order delever date is today"
			end
		end
		alert
	end

end
