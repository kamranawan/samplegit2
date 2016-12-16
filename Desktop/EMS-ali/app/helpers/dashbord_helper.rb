module DashbordHelper
	
	def user_role(role)
		if role == 0
			"CEO"
		elsif role == 1
			"Master"
		else
			"Employ"
		end
	end
	

end
