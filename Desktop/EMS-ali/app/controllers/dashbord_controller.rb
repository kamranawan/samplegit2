class DashbordController < ApplicationController
 
  def index
		@alerts = Attandance.todays_alerts
		@alert_count = @alerts.count
		@weekely_orders = Order.where("order_received >?" , Time.now - 365.days)
  end

end
