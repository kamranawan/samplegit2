class AttandancesController < ApplicationController
	
	def index		
		@employs = Employ.all
		str = ""
		Employ.all.each do |e|
			if params["#{e.id}"]
			  str << "(#{e.id},"+params["#{e.id}"]+")"
			end	
		end
		if params["#{Employ.first.id}"] and !params[:attendence_date].blank?
			Attandance.save_attadance(str , params[:attendence_date] , current_user)
			flash[:notice] = "Attadance  successfully marked"
			redirect_to register_path
		end
	end
	
	def register
		if params[:page]
			@employs = Employ.all
			@this_month = Attandance.where("attendence_date >= ? AND attendence_date < ?",
				Time.zone.now.beginning_of_month - (params[:page].to_i).month ,
				Time.zone.now.beginning_of_month - ( params[:page].to_i - 1).month  )
			 @pre = params[:page].to_i + 1
			 @date = Time.zone.now.end_of_month - (params[:page].to_i).month 
		else
			@date = Time.zone.now
			@pre = 1
			@next = 0
			@employs = Employ.all
			@this_month = Attandance.where("attendence_date >= ?", Time.zone.now.beginning_of_month)	
		end
	end
end